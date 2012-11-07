require 'pry'
load 'person.rb'
load 'animal.rb'
load 'farm.rb'

puts "(f)arm, (p)erson, (a)nimal or (q)uit?"
response = gets.chomp
farms = {}

while response != 'q'
  case response
  when 'f'
    puts "Name?"
    name = gets.chomp
    farm = Farm.new(name)
    farms[name] = farm
  when 'p'
    puts "Name?"
    name = gets.chomp
    puts "Age?"
    age = gets.chomp
    puts "Gender?"
    gender = gets.chomp
    person = Person.new(name, age, gender)
    puts "What farm would you like: #{farms.keys.join(', ')}?"
    farm_name = gets.chomp
    farms[farm_name].people << person

    #old school
    #farm_found = nil
    #farms.each do |farm|
    #  if (farm.name == farm_name)
    #    farm_found = farm
    #  end
    #end
  when 'a'
    puts "Name?"
    name = gets.chomp
    puts "Gender?"
    gender = gets.chomp
    puts "Species?"
    species = gets.chomp
    animal = Animal.new(name, gender, species)
    puts "What farm would you like: #{farms.keys.join(', ')}?"
    farm_name = gets.chomp
    farms[farm_name].animals << animal

    #old school
    #farm_found = nil
    #farms.each do |farm|
    #  if (farm.name == farm_name)
    #    farm_found = farm
    #  end
    #end
  end

  puts "(f)arm, (p)erson, (a)nimal or (q)uit?"
  response = gets.chomp
end

binding.pry

