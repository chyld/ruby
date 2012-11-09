puts "(n)umber or (q)uit"
response = gets.chomp

while response != 'q'

  puts "you typed in #{response}"

  begin
    #puts "entering in begin"
    response.times { puts "x" }
  rescue
    puts "sorry your code is busted, please fix!"
    #response = response.to_i
    #retry
  end

  if response == 'r'
    raise "looks like an error!"
  end

  puts "(n)umber or (q)uit"
  response = gets.chomp
end
