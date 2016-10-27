class Txtbnb
	attr_reader:name, :city, :price, :capacity
	def initialize (name, city, capacity, price)
	@name = name
	@city = city
	@price = price
	@capacity = capacity
end
end

homes = 
[Txtbnb.new("Pepita", "Barcelona", 4, 34),
Txtbnb.new("Choripan", "Neverland", 2, 45),
Txtbnb.new("Juanete", "Bajo un puente", 8, 58),
Txtbnb.new("Brunete", "Caja de cartones", 4, 55),
Txtbnb.new("Pillastrez", "Cloaca", 5, 67),
Txtbnb.new("Pepe", "Valencia", 6, 35),
Txtbnb.new("Renato", "Orense", 3, 42),
Txtbnb.new("Maripuri", "Su casa", 5, 35),
Txtbnb.new("Camila", "Windsor", 3, 58),
Txtbnb.new("Cirilo", "Madrid", 2, 33)
]

homes.each do |hm|
	puts "#{hm.name} in #{hm.city}."
end


puts "-"*50

lowest_price = homes.sort do |home1, home2|
  home1.price <=> home2.price
end

lowest_price.each do |hm|
	puts "#{hm.name}: #{hm.price}, #{hm.city}."
end

puts "-"*50
puts "Please, choose 'x' to order your option by the highest price or 'y' by capacity."
input = gets.chomp.downcase


if input == "x"
	highest_price = homes.sort do |home1, home2|
  	home2.price <=> home1.price
	end

	highest_price.each do |hm|
		puts "#{hm.name}: #{hm.city}, #{hm.price}."
	end
	elsif input == "y"
	sorted_capacity = homes.sort do |home1, home2|
  	home1.capacity <=> home2.capacity
	end

	sorted_capacity.each do |hm|
		puts "#{hm.name}: #{hm.capacity}."
	end
end

puts "Choose a city:"
input_2 = gets.chomp.capitalize 
chosen_city = homes.select do |hm|
	hm.city == input_2
end

puts "Choices in your prefer city:"
chosen_city.each do |hm|
	puts "#{hm.name}: #{hm.city}."


puts "#{input_2} is:"

total_prices = homes.map do |hm|
	hm.price
end	

total = total_prices.reduce(0.0) do |sum, num|

	sum += num
end

puts average = total/ total_prices.length

puts "Specify a price:"

total_prices.each do |price|
	puts "#{price}"

input_3 = gets.chomp.to_i

chosen_city_by_price = homes.find do |hm|
	hm.price == input_3
end

puts "This is your choice: #{chosen_city_by_price.name} in #{chosen_city_by_price.city}."
end
end
puts "Nice choice. Be prepare for sharing your cockroaches."

