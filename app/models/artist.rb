class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end 

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self   # so painting.artist is an instance, meaning artist attribute should be an instance, so when we create a painting, in the artist argument, we pass an instance instead of a string of name. See console for reference
    end
  end

  def galleries
    self.paintings.map do |painting| #grab all this artist's paintings by calling the method above
      painting.gallery
    end
  end

   def cities
     self.galleries. map do |artist_gallery|    #gallery is an array of gallery instances now(pass gallery variable into painting variables. Refer to console
       artist_gallery.city  
    end
   end

   def self.total_experience
    total = 0
      @@all.map do |artist|
        total += artist.years_experience
      end
      total.to_i
   end

   def self.most_prolific
      this_per = 0
      most_prolific = nil
    @@all.map do |artist|
      current_per = (artist.paintings.length / artist.years_experience) ##divided by 0??
      if current_per > this_per
        this_per = current_per
        most_prolific = artist
      end
    end
    most_prolific
   end

   def create_painting(title, price, gallery)     ######
      new_painting = Painting.new(title, price, self.name, gallery)
      new_painting
   end
end
