class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    (self.paintings.map do |painting|
      painting.artist
    end).uniq
  end

  def artist_names
    (self.artists.map do |artist|
      artist.name
    end).uniq
  end

  def most_expensive_painting
      test_array = []
      self.paintings.each do |painting|
        test_array << painting.price
      end
      self.paintings.find do |painting|
        painting.price == test_array.max
      end
  end
end
