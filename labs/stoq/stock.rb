require 'yahoofinance'

class Stock
  attr_accessor :symbol, :quote, :change, :average, :shares, :position
  def initialize(symbol, quote, shares)
    @symbol = symbol
    @quote = quote
    @shares = shares
    @change = 0
    @average = quote
    @position = shares * quote
  end
  def self.quote(symbol)
    YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
  end
  def update_quote
    begin
      @quote = Stock.quote(symbol)
      @position = shares * quote
    rescue
    end
  end
end
