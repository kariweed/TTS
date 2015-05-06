#TRY #1
# def throw(dice)
# 	roll = []
#     dice_array = dice_array.rand(1..6)
# end

# die = ["1", "2", "3", "4", "5", "6"]*2

# player1 = throw(die)
# puts "You rolled " + dice_array.inspect

# player2 = throw(die)
# puts "You rolled " + dice_array.inspect


# #TRY #2...dice.rb:18:in `throw': private method 
# `rand' called for ["1", "2", "3", "4", "5", "6", 
# "1", "2", "3", "4", "5", "6"]:Array (NoMethodError)
# 	from dice.rb:23:in `<main>'

# def throw(dice_array)
# 	roll = []
#     dice_array = dice_array.rand(1..6)
# end

# die = ["1", "2", "3", "4", "5", "6"]*2

# player1 = throw(die)
# puts "You rolled " + dice_array.inspect

# player2 = throw(die)
# puts "You rolled " + dice_array.inspect



#TRY #3
#ERROR - undefined local variable or method 
#`dice_array' for main:Object (NameError)

# def throw(dice_array)
# 	roll = []
#     dice_array = dice_array.shuffle
# end

# die = ["1", "2", "3", "4", "5", "6"]

# player1 = throw(die)*2
# puts "You rolled " + dice_array.inspect

# player2 = throw(die)*2
# puts "You rolled " + dice_array.inspect



#TRY #4
#ERROR -  `+': no implicit conversion of Array into String (TypeError)
	#from dice.rb:66:in `<main>'

# def throw(dice_array)
# 	roll = []
#     dice_array = dice_array.shuffle
# end

# die = ["1", "2", "3", "4", "5", "6"]

# roll_1 = throw(die)*2
# puts "You rolled " + roll_1

# roll_2 = throw(die)*2
# puts "You rolled " + roll_2




#TRY #5
# #You rolled ["3", "6", "5", "1", "2", "4", "3", "6", "5", "1", "2", "4"]
# #You rolled ["6", "1", "3", "2", "4", "5", "6", "1", "3", "2", "4", "5"]
# #So...it worked, but it returned 1-6 twice (in shuffle form)

# def throw(dice_array)
# 	roll = []
#     dice_array = dice_array.shuffle
# end

# die = ["1", "2", "3", "4", "5", "6"]

# roll_1 = throw(die)
# puts "Player 1 rolled " + roll_1.inspect

# roll_2 = throw(die)
# puts "Player 2 rolled " + roll_2.inspect



#TRY #6 - WoOOHOOOOO! so the basic program works...
#but it just returns two randon numbers from 1-6
#not 1-6 from two different die rolls....
#below I added 1-6 to 1-6...
# Player 1 rolled ["5", "6"]
# Player 2 rolled ["2", "3"]

# def throw(dice_array)
# 	roll = []
#     dice_array = dice_array.shuffle
#     roll = dice_array.first(2)
# end

# die = ["1", "2", "3", "4", "5", "6"]

# roll_1 = throw(die)
# puts "Player 1 rolled " + roll_1.inspect

# roll_2 = throw(die)
# puts "Player 2 rolled " + roll_2.inspect




#Let's tally scores and announce a winner!
# Player 1 rolled ["5", "6"]
# Player 2 rolled ["6", "5"]
# dice.rb:134:in `<main>': undefined method `>' 
# for ["5", "6"]:Array (NoMethodError)

#added ".inspect.to_i" to lines 141-143
# Player 1 rolled ["3", "4"]
# Player 2 rolled ["3", "5"]
# It's a tie!!!

#added 1-6 to 1-6 for the array....so it mirrors
#the actual rolling of two separate die


def throw(dice_array)
	roll = []
    dice_array = dice_array.shuffle
    roll = dice_array.first(2)
end

die = ["1", "2", "3", "4", "5", "6", "1", "2", "3", "4", "5", "6"]

roll_1 = throw(die)
puts "Player 1 rolled " + roll_1.inspect

roll_2 = throw(die)
puts "Player 2 rolled " + roll_2.inspect


#Can't get this part to work...
#it calls every roll a tie!...
if roll_1.inspect.to_i > roll_2.inspect.to_i
	puts "Player one wins!!!"
elsif roll_2.inspect.to_i > roll_1.inspect.to_i
	puts "Player two wins!!!"
else puts "It's a tie!!!"
end





















