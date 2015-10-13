
class Farmer < ActiveRecord::Base
	has_many :plantations
	has_many :fruits
end

class Fruit < ActiveRecord::Base
	belongs_to :plantation
	belongs_to :farmer
end

class Plantation < ActiveRecord::Base
	belongs_to :farmer
	has_many :fruits
end

for i in 2..3
	i.times { print '*' }
	puts
	j = i
	while j > 1
		(i-1).times { print '*' }
		puts
		j = j - 1
	end
	print '*'
	puts
end 