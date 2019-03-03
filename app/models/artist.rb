class Artist


  attr_reader :name, :years_experience
  attr_accessor :painting
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    #@paintings = paintings 
        # This line gives an artist instance with(@painting = nil)
    # as one of the values in all the artist instance. 
    # Avoid this. Coz all the artist instances will be initialized
    #with @painting= nil, despite giving RHS value. It will always remain nil.
    #self.galleries = galleries
       #Same as above reason. Dont have this
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings 
    paintings = Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    galleries = self.paintings.map { |painting| painting.gallery}
    galleries.uniq
  end

  def cities
    cities = self.galleries.map {|gallery| gallery.city}
    return cities.uniq
  end

  def create_painting(title, price, gallery)
    title = Painting.new(title, price, gallery,self)
  end

  def self.total_experience 
    total_experience_of_all = 0
    self.all.each  {|artist| total_experience_of_all += artist.years_experience}
    total_experience_of_all
  end
  
  def self.prolificy
    self.all.map  {|artist| artist.paintings.count.to_f/artist.years_experience}
  end

  def self.most_prolific 
    self.all.select {|artist| artist.paintings.count.to_f/artist.years_experience == prolificy.max}
    # most_prolific_artist 
    
    # required_index = @@all.index(prolificy.max)
    # most_prolific_artist = @@all[required_index]
  end

  
end


