user_numbers = []

sum = 0
product = 1

5.times do
puts "please enter a number:"
current_number = gets.chomp.to_i
user_numbers.push(current_number)
end

user_numbers.each do |number|
sum = sum + number
end

user_numbers.each do [number]
product = product * number
end

 puts "The sume of your numbers is #{sum}."
 puts "The product ff your numbers is #{product}"
 puts "the biggest number is #{user_numbers.max}"
 puts "The smallest number is #{user_numbers.min}""