require 'httparty'
require 'pry'

class Crawler
  attr_accessor :url, :body, :words, :histogram

  def initialize(url)
    @url = url
    @histogram = Hash.new(0)

    parse

    words.each{|w| @histogram[w.downcase] +=1 }
    @histogram = @histogram.sort_by {|key, value| value}.reverse
  end

  def parse
    @body = HTTParty.get(@url)
    @words = @body.split
  end

  def word_count
    @words.count
  end

  def count_by_name(name)
    words.select{|w| w.downcase == name}.count
  end

  def obama
    count_by_name('obama')
  end

  def romney
    count_by_name('romney')
  end
end
