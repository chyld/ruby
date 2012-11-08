require 'pry'

load 'person.rb'
load 'carb.rb'
load 'protein.rb'
load 'factory.rb'

@people = {}
@menus = {}

puts "(p)late, p(e)rson or (q)uit?"
response = gets.chomp

while response != 'q'
  if response == 'p'
    plate = create_plate
    put_plate_in_menus(plate)
  else
    add_menu_to_person
  end

  puts "(p)late, p(e)rson or (q)uit?"
  response = gets.chomp
end

binding.pry
