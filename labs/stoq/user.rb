class User
  attr_accessor :name, :password, :cash, :stocks
  def initialize(name, password, cash)
    @name = name
    @password = password
    @cash = cash
    @stocks = []
  end
  def login
    puts "Password required to buy stock:"
    password = gets.chomp
    password == @password
  end
  def purchase_stock(symbol, shares)
    quote = Stock.quote(symbol)
    if (quote * shares) <= cash
      @stocks << Stock.new(symbol, quote, shares)
      @cash -= @stocks.last.position
    end
  end
end
