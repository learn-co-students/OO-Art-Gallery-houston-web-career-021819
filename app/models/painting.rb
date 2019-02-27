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
    total = 0
    Painting.all.each do |painting|
      total += painting.price
    end
    return total
  end

end
