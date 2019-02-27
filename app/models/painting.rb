class Painting

  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.total_price
    price_array = self.all.price
    price_array.inject{|sum, x| sum + x}
  end

end
