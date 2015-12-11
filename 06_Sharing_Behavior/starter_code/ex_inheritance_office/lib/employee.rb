
#Sharing Behavior and Variables
#TIME: 20 min

# Create an employee class.
class Employee
	#with first name & last name

	#create a class variable that counts how many employees have been created
	#call it num_employees
	attr_accessor :first_name, :last_name

	#Remember to create getter method for the class variable
	#name it get_num_employees
	@@num_employees = 0
	def initialize (first_name, last_name)
		@first_name = first_name
		@last_name = last_name
		@@num_employees += 1
	end

	def self.num_employees
		@@num_employees
	end
	def full_name
	   #return a string
		 "#{first_name} #{last_name}"
	end

	def contact
		"Yell my name really loud: #{full_name()}"
	end

end
