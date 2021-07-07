require_relative '../config/environment.rb'

Bob = Artist.new("Bob Ross", 33)
Monet = Artist.new("Claude Monet", 47)
Jack = Artist.new("Jack Rotta", 19)

Guggenheim = Gallery.new("The Guggenheim", "New York City")
MOMA = Gallery.new("The Museum of Modern Art", "New York City")
MET = Gallery.new("The Metropolitan Museum of Art", "New York City")
Art_Institute = Gallery.new("The Art Institute of Chicago", "Chicago")

water_lilies = Monet.create_painting("Water Lilies", 2000000, Guggenheim)
mountains = Bob.create_painting("Mountains", 5000, MET)
flowers = Bob.create_painting("Flowers", 8000, Art_Institute)
Garry = Jack.create_painting("Garry's Mod", 20, MOMA)
SCP = Jack.create_painting("Secure, Contain, Protect", 5, MET)
sunset = Bob.create_painting("Sunset", 10000, MOMA)
trees = Monet.create_painting("Trees", 100000, Art_Institute)



binding.pry

puts "Bob Ross rules."
