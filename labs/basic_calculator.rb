require 'pry'

puts "Do you want to (a)dd, (s)ubtract or (q)uit?"
response = gets.chomp

while response != 'q'
  puts "First?"
  first = gets.to_f
  puts "Second?"
  second = gets.to_f

  if response == 'a'
    total = first + second
  elsif response == 's'
    total = first - second
  end

  puts "The result of #{first} and #{second} is #{total}"
  puts "Do you want to (a)dd, (s)ubtract or (q)uit?"
  response = gets.chomp
end




