# require 'csv'

# name = ARGV[0]
# 	#ARGV is an array of all the variables we pass
# 	#in on the command line
# 	#--if all in caps, this means it is "constant" or "static"

# def greet(name)
# 	file = CSV.read("greetings.csv")
# 	#if you have a separate CSS file listing multiple greetings
# 	greetings = file[0]
# 	num = rand(greetings.length)
# 	#this line allows you to pull randomly from the array
# 	#without even knowing how many items are in the array

# 	"#{greetings[num]} #{name} !"
# end

# puts "What's your name?"
# name = gets.chomp
# puts greet(name)




# #####METHOD MUTATION####
# #returns what you say in all caps 
# def whatdidyousay(saying)

#  "#{gets.chomp} #{whatdidyousay.upcase}!"

# end

# saying = gets.chomp
# puts (saying).upcase



###RECURSION### not often in Ruby
#more of an 'anti-patern' but more prominent in C

# def all_the_way_down(num)
#     num = num - 1
#     all_the_way_down(num) if num > 0
#     puts "1 turtle @ #{num}"
# end

# all_the_way_down(5)



######RUBY BLOCKS - a method without a name
#blocks are more temporary...

# items = [1,2,3,4]
# items.each do |item|
#     p item * item
		# "p" is just short for ""PUTS""
# end

#=> 1
#=> 4
#=> 9
#=> 16


##### BLOCK ARGUMENTS#####
# items = [1,2,3,4]

# items.each { |item| p item * item }

# The block argument |item|:
# Iteration 1: item = 1, result: 1
# Iteration 2: item = 2, result: 4
# Iteration 3: item = 3, result: 9
# Iteration 4: item = 4, result: 16
# returns because there are no more



# def my_square(items)
#   # create an empty array to store the results of the block
#   results = []
#   # iterate over the items array, square each element, and store the results in the results array
#   items.each { |item| results << item * item } 
#   					####  << is the same as ".push"
#   # return the newly populated array
#   results
# end

# array = [1,2,3,4]

# p array
# #=> [1, 2, 3, 4]

# p my_square(array)
# #=> [1, 4, 9, 16]




#            this is hash #1           this is hash #2 
# tts = [ { id: 1, name: 'Tim' }, { id: 2, name: 'Erin' }, { id: 3, name: 'Dan' }]
#        *|f|* can name anything, but refers to hash #1
# tts.map { |f| f[:name] }
# #=> ["Tim", "Erin", "Dan"]

# :name => "blah"
# name: "blah"
#these are the same thing...hashrockets are kinda
#old school now....instead, you can use name:"info"
####



###SELECT AND REJECT###
##allow us to filter a bunch of records at the same time.

# # Note the addition to the sex attributes
# tts = [ { id: 1, name: 'Tim', sex: 'male' }, 
#             { id: 2, name: 'Erin', sex: 'female'}, 
#             { id: 3, name: 'Dan' }]

# tts.select { |f| f[:sex] == 'female' }
# #=>[{ id: 2, name: 'Erin', sex: 'female' }]

# tts.reject { |f| f[:name].length > 3 }.map{ |f| f[:name] }
# #=>['Dan', 'Tim']




# tts.any? { |f| f[:name] == 'Dan' }
# #=> true

# tts.any? { |f| f[:name] == 'Awesome' }
# #=> false

# tts.all? { |f| f[:name] == 'Dan' }
# #=> false


# if there is a question mark, we would get a result
# 	of 'true' or 'false'

# if there is a bang (!) it will override the original



# blocks also have a cool funtion(ability) built in...
# YEILD

# kinda like a keyword/return.

# def test
#    puts "You are in the method"
#    yield
#    puts "You are again back to the method"
#    yield
# end

# test {puts "You are in the block"}
# #=> You are in the method
# #=> You are in the block
# #=> You are again back to the method
# #=> You are in the block








# How does each differ from map? In what sorts of cases 
# would you want to use the each? The map?
# -map returns a new array
# 	-use when want full array 
# - each
# 	-use if looking for specific variable.


# How would you describe the difference between any?and all? 
# What data type do these methods return? 
# Do they have any effect on the array on which they're called? (Try it out in the irb).
#  -ANY — looks to see if anything has the variable you’re asking for.
#  -ALL — looks to see if every single variable is the same as what you’re asking for


# The each method itself uses yield. Why does it need yield 
# to work as it does? What code is each yielding control to, 
# and what does it feed yield as a block argument? 
# (Hint: It's yielding multiple times.)
# - each yeilds control to block
# - feeds

####SORTING#####
# spaceship operator....<=>
# it runs three different comparisons
# boolean (true/false) only returns two comparisons


# names.sort { |x,y| x.capitalize <=> y.capitalize}


# 2.2.1 :006 > array = ["aaaa", "aa", "a"]
#  => ["aaaa", "aa", "a"] 
# 2.2.1 :007 > array.reverse
#  => ["a", "aa", "aaaa"] 
# 2.2.1 :008 > array.sort { |x,y| x.length <=> y.length }
#  => ["a", "aa", "aaaa"] 
# 2.2.1 :009 > array.sort { |x,y| x.length <=> y.length }.reverse
#  => ["aaaa", "aa", "a"] 



#####FILTER#####
# def perfect_squares ["1".."16"].select do |x|
# 	Math::sqrt


# 	res = Math::sqrt(x)
# 	if res % 1 == 0
# 		end
# 	end


# def square_eqs(array)
# 	results = []
# 	array.each do |i|
# 		results << "#{i} * #{i} = #{i*i}"
# end

# return results
# end
# puts square_eqs( [1, 2, 3, 4])



# ##each can be simplified to map:
# def square_eqs(array)
# 	results = []
# 	array.map do |i|
# 	"#{i} * #{i} = #{i*i}"
# end
# puts square_eqs( [1, 2, 3, 4])



# #do-end == {}
# def square_eqs(array)
# 	array.map{"#{i} * #{i} = #{i*i}"}





# # Do-End == {}
# def square_eqs(array)
#   array.map { |i| "#{i} * #{i} = #{i*i}" }
# end
# puts square_eqs( [1,2,3,4] )
# def double_eqs(array)
#   array.map { |i| "#{i} * 2 = #{i*2}" }
# end
# puts double_eqs( [1,2,3,4] )



# def equations(array)
# 	array.map { |i| "#{i} * #{i} = #{i*i}" }
# 	yield
# 	array.map { |i| "#{i} * 2 = #{i*2}" }
# end

# puts (&:array.map)( [1, 2, 3, 4] )


def equations(array, &block)
	array.map do |i|
		yield i 
	end
end
puts equations [1, 2, 3, 4] { |i| "#{i} * 2 = #{i*2}" }














