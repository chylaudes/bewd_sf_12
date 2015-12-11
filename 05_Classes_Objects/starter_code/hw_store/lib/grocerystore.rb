#use this file to define a class that will represent a grocery store

class GroceryStore
	attr_accessor :name, :inventory

	def initialize (name)
		@name = name
		@inventory = {}
	end

	def stock_item (item_name, price, quantity)
		@inventory[item_name] = {price: price, quantity: quantity}
	end

	def view_item (item_name)
		puts "#{self.name} has #{inventory[item_name]["quantity"]} #{item_namee}s for #{inventory[item_name]["price"]} dollar/s"
		puts "#{item_name}"
		@inventory[item_name].each do |k, v|
			puts "#{k} is #{v}"
		end
		#puts the information the inventory has about the item (price and quantity)
	end

	def decrease_item (item_name, num) #bannanas, 2
		binding.pry
		new_quantity = @inventory["#{item_name}"][:quantity] - num
		@inventory["#{item_name}"][:quantity] = new_quantity
		#this happens when a customer adds an item to their cart,
		#the store now has some number less of the item!
		#example: if num = 2, thee customer bought 2 items
		# update the quantity in the inventory
		#if you do the bonus, you should return the number of items the customer could buy
		#that would be either the num or the amount the store had
	end


end
