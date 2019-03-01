class Painting

  attr_reader :title, :price#, :artist, :gallery
  attr_accessor :artist, :gallery
  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    total = 0
    @@all.map do |painting|
      total += painting.price
    end
    total.to_i
  end

end
