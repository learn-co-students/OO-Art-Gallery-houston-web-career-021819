class Gallery

  attr_reader :name, :city
  attr_accessor :painting
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
   # @painting = painting
    
    @@all << self
  end

  def self.all 
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists 
    self.paintings.map {|painting| painting.artist}
  end

   def artist_names
    artist_names = self.artists.map {|artist| artist.name}
    artist_names.uniq
   end

  def most_expensive_painting 
    prices  = self.paintings.map {|painting| painting.price}
    most_expensive_painting = self.paintings.select {|painting| painting.price == prices.max}
  end
  
end
