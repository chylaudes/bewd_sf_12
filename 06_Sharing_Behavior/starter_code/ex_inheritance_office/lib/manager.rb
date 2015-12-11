require_relative 'employee'
# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
	#managers have titles and emails
	attr_accessor :title, :contact

	#make sure a Manager's full name includes their title
	def initialize(first_name, last_name, title, contact)
		super(first_name, last_name)
		@title = title
		@contact = contact
	end
	#managers like to be contacted via email
	def contact
		@contact
	end
end
