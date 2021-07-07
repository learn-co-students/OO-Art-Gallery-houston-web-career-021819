class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    total = 0
    Artist.all.each do |artist|
      total += artist.years_experience
    end
  end

  def self.most_prolific
    prolific_record = 0.0
    Artist.all.each do |artist|
      prolific_rating = (artist.paintings.length/artist.years_experience)
      if prolific_rating>prolific_record
        prolific_record = prolific_rating
      end
    end
    Artist.all.find do |artist|
      (artist.paintings.length/artist.years_experience) == prolific_record
    end
  end

  def create_painting(title: title, price: price, gallery: gallery)
    new_painting = Painting.new(title,price)
    new_painting.gallery = gallery
    new_painting.artist = self
    return new_painting
  end
end
