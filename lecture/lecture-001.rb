require 'pry'

# this is a comment
# use this any time you need to explain something

puts "What is your name?"
first = gets
# version 1 - normal
puts "You typed in " + first
# version 2 - string interpolation
puts "You typed in #{first}"
# version 3 - single quotes - does not work
puts 'You typed in #{first}'

puts "Enter an integer?"
a = gets
a = a.to_i
puts "Enter a floating point number?"
b = gets
b = b.to_f

c = a + b
puts "The result of #{a} summed with #{b} is #{c}"

# this is how to debug using pry
binding.pry

puts "What is your age?"
age = gets.to_i

if age < 5
  puts "You are a baby"
elsif (age >= 5) && (age < 18)
  puts "You are a minor"
else
  puts "You are an adult"
end

puts "Enter a letter"
letter = gets.chomp

# case statement
case letter
when "a"
  puts "You typed in a"
when "b"
  puts "You typed in b"
when "c"
  puts "You typed in c"
when "d"
  puts "You typed in d"
end

# looping
puts "Enter a starting number"
start = gets.to_i
puts "Enter an ending number"
stop = gets.to_i

while start <= stop
  puts "Counting #{start}"
  start += 1
end

# methods

def square(a)
  a * a
end

def volume(l, w, h)
  l * w * h
end

puts "Length?"
length = gets.to_i
puts "Width?"
width = gets.to_i
puts "Height?"
height = gets.to_i
vol = volume(length, width, height)
puts "The volume of #{length} and #{width} and #{height} is #{vol}"

puts "Enter a number to square"
b = gets.to_i
c = square(b)
puts "The square of #{b} is #{c}"




























