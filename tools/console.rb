require_relative '../config/environment.rb'

van_gogh = Artist.new('Vincent Van Gogh', 40)
mark = Artist.new('Mark Pothecary', 1)

starry_night = Painting.new('Starry Night', 50000000, van_gogh)
olive_trees = Painting.new('Olive Trees', 5000000, van_gogh)
rock = Painting.new('Rock', 50, mark)
rock2 = Painting.new('Rock 2', 55, mark)

menil = Gallery.new('The Menil Institute', 'Houston, TX')

starry_night.gallery = menil
olive_trees.gallery = menil
rock.gallery = menil
rock2.gallery = menil


binding.pry

puts "Bob Ross rules."
