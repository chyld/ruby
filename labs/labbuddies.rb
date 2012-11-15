require 'pry'
require 'active_support/all'

students = ['Adrian Bautista', 'Larry Buchanan', 'Jasmine Chabra', 'Raymond Chan', 'Dustin Coates', 'Aaron Fuchs', 'Chris Goodmacher', 'Zahra Jabini', 'Avinash Karnani', 'Gaurav Karnani', 'Audric Kim', 'Jonathan Ku', 'Derrick Lannaman', 'Tim LaTorre', 'Hsi-Chang Lin', 'Marc Whitman', 'Thomas Yang']
students = students.shuffle
puts `clear`
puts "Group size?"
size = gets.to_f
is_lonely = (students.count % size.to_i) == 1

if is_lonely
  ((students.count / size) - 1).truncate.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"}
  puts "Group z: #{students.to_sentence}"
else
  (students.count / size).ceil.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"}
end
