def number(0..100)
	while number <= 100
		if number % 3 == 0 || number % 5 == 0
			puts "fizzbuzz"
			break
		elsif number % 3 == 0
			puts "fizz"
			break
		elsif number % 5 == 0
			puts "buzz"
			break
		else 
			puts number
		end
	end









# def numbers()
#   while numbers <= 100
#   if number % 3 = 0
#   puts 'fizz'
#   elsif number % 5 = 0
#   puts 'buzz'
#   elsif number % 3 = 0 || number % 5 = 0
#   puts 'fizzbuzz'
#   else 
#   puts number
# end

