require 'pry'

def get_input
  #Get input from the user.
	gets.strip
end

def calculate_upvotes(story, category)
    upvotes = 1
    if story.include?("cat")
        upvotes = upvotes * 5
    end
    if story.include?("bacon")
        upvotes = upvotes * 8
    end
    if story.include?("food")
        upvotes = upvotes * 3
    end
    upvotes
end


puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
