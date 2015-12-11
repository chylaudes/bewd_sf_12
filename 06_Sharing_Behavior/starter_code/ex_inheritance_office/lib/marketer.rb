require_relative 'employee'

class Marketer < Employee
	#managers have titles and emails
	attr_accessor :contact

	#make sure a Manager's full name includes their title
	def initialize(first_name, last_name, contact)
		super(first_name, last_name)
		@contact = contact
	end
	#managers like to be contacted via email
	def contact
		@contact
	end
end
