cars = {"Honda" => "Civic", "Toyota" => "Camry", "Ford" => "Mustang", "Plymouth" => "Volare"}

puts "What model car do you drive?"

model = gets.chomp.capitalize

cars.each do |key, value|
	if model == value
		puts "A #{value} -- that's a #{key}, right?"
		break
	end
end

cars.each do |key, value|
	if model != value
		puts "#{model}" + "? Can't afford anything better?"
		break
	end
end
