class Artist
  @@all = []
  attr_reader :name, :years_experience

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
      painting.artist == self
    end
  end

  def galleries
    (self.paintings.map {|painting| painting.gallery}).uniq
  end

  def cities
    (self.galleries.map  {|gallery| gallery.city}).uniq
  end

  def create_painting (title, price, gallery)
    new_painting = Painting.new(title, price, self)
    new_painting.gallery = gallery
  end

  def self.total_experience
    (Artist.all.map {|artist| artist.years_experience}).inject{|sum, n| sum + n}
    # total_experience = 0
    # Artist.all.each do |artist|
    #   total_experience += artist.years_experience
    # end
    # total_experience
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.count / artist.years_experience}

    #
    # check_value = 0
    # Artist.all.each do |artist|
    #   prolificness = artist.paintings.count / artist.years_experience
    #   if prolificness > check_value
    #     check_value = prolificness
    #     prolific_artist = artist
    #   end
    # end
    # prolific_artist
    #
    #
    #
    #
    #
    #
    # test_array = []
    # Artist.all.each do |artist|
    #   prolificness = artist.paintings.count / artist.years_experience
    #   test_array << prolificness
    # end
    # Artist.all.find do |artist|
    #   artist.paintings.count / artist.years_experience == test_array.max
    # end
  end #Maybe rework later?
end
