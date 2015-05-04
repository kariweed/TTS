# mad_libs = " "

# user_input = {"noun" => "", "verb" => "", "adjective" => ""}

# user_input.each_key do |key| 
# 	puts "Give me a #{key}:"
# 	user_input[key] = gets.chomp
# end

# puts "Bike Riding! Most doctors agree that bicycle #{user_input[verb]}ing is a/an #{user_input[adjective]} form of exercise. #{user_input[verb.capitalize]}ing a bicycle enables you to develop your #{user_input["part_of_body"]} muscles as well as #{user_input["adverb"]} increase the rate of your {part_of_body} beat.  More {noun}s around the world "verb" bicycles than drive "animals". No matter what kind of "noun" you "verb", always be sure to wear a/an "adjective" helmet.  Make sure to have "color" reflectors too!"


user_input = {"noun" => "", "verb" => "", "adjective" => "","part_of_body" => "","color" => "","animals" => "" }


user_input.each_key do |key|
 puts "Give me a #{key}: "
 user_input[key] = gets.chomp
end

puts "Bike Riding! Most doctors agree that bicycle 
#{user_input["verb"]}ing is a/an #{user_input["adjective"]} 
form of exercise. #{user_input["verb"].capitalize}ing a 
bicycle enables you to develop your #{user_input["part_of_body"]} 
muscles as well as #{user_input["adverb"]} increase the rate 
of your #{user_input["part_of_body"]} beat.  
More #{user_input["noun"]} around the world #{user_input["verb"]}
bicycles than drive #{user_input["animals"]}. No matter 
what kind of #{user_input["noun"]} you #{user_input["verb"]},
always be sure to wear a/an #{user_input["adjective"]} 
helmet.  Make sure to have #{user_input["color"]} reflectors 
too!"


# puts "Tell me a noun: "
# noun 1 = gets.chomp