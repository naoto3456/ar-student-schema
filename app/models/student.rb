require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
	has_many :student_teachers	
	has_many :teachers, through: :student_teachers

 	validates :age, :numericality => {:greater_than => 5}, :allow_nil =>true
 	validates :email, :uniqueness => true, :format => { :with => /.+@.{2,}\..+/ }, :allow_nil =>true
 	#validates :phone, :numericality => {:is => 10} , :allow_nil =>true

	def name
		"#{first_name} #{last_name}"
	end 

	def age
		return nil if birthday == nil
		now = Date.today
		diff = 0
		if now.month > birthday.month
			diff = 0
		elsif now.month == birthday.month && now.day >= birthday.day
			diff = 0
		elses
			diff = 1	
		end
		now.year - birthday.year - diff
	end

end

