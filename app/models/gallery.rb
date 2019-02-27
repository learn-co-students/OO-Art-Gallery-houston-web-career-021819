class Gallery
  @@all = []
  attr_reader :name, :city
  def initialize(name, city)
    @name = name
    @city = city   
    @@all << self 
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names 
    artists.map do |artist|
      artist.name 
    end
  end

  def most_expensive_painting 
    highest_painting = 0
    paintings.each do |painting|
      if painting.price > highest_painting
        highest_painting = painting.price
      end
    end
    paintings.find {|painting| painting.price == highest_painting}
  end 
end
