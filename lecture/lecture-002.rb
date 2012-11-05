require 'pry'

colors = ['blue', 'green', 'yellow']
puts "Enter a new color:"
color = gets.chomp
colors << color

person = {}
puts "Last name?"
person[:last] = gets.chomp
puts "First name?"
person[:first] = gets.chomp
puts "Age?"
person[:age] = gets.chomp

colors.each do |color|
  puts "The color is #{color}"
end

(1..1000).each do |x|
  puts "the power of the number is #{x**x}"
end

person.each do |key, value|
  puts "the key is #{key} and value is #{value}"
end

# binding.pry
