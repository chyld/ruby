require 'pry'
require 'active_support/all'
require_relative 'stock'
require_relative 'user'
require_relative 'factory'

@users = {}

puts `clear`
puts "(c)reate a user, (b)uy stock, (s)how dashbord or (q)uit?"
response = gets.chomp
while response != 'q'
  case response
  when 'c'
    create_user
  when 'b'
    user_name = choose_user
    user = @users[user_name]
    buy_stock(user) if user.login
  when 's'
    user_name = choose_user
    user = @users[user_name]
    show_dashboard(user)
  end

  puts `clear`
  puts "(c)reate a user, (b)uy stock, (s)how dashbord or (q)uit?"
  response = gets.chomp
end

binding.pry
