class Painting
  @@all = []
  @@all_prices = []
  attr_reader :title, :price, :artist
  attr_accessor :gallery

  def initialize(title, price, artist)
    @title = title
    @price = price
    @artist = artist
    @@all << self
    @@all_prices << price
  end

  def self.all
    @@all
  end

  def self.all_prices
    @@all_prices
  end

  def self.total_price
    self.all_prices.inject(:+)
  end

end
