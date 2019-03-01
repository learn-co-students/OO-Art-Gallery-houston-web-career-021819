class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|    # an array of instances or just names?
      painting.gallery == self
    end
  end

  def artists
    self.paintings.map do |painting|   #grab this gallery's all paintings
      painting.artist                  # only returns one?
    end                                #?
  end

  def artist_names
    self.paintings.map do |painting| 
      painting.artist.name    #??
    end
  end

  def most_expensive_painting
    this_price = 0
    most_expensive_painting = nil
    self.paintings.map do |painting|
      if painting.price > this_price
        this_price = painting.price
        most_expensive_painting = painting
      end
    end
    most_expensive_painting
  end

end
