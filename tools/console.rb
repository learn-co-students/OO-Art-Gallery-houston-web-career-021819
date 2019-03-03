require_relative '../config/environment.rb'
require 'pry'




artist1 = Artist.new('a1', 30)
artist2 = Artist.new('a2', 31)
g1 = Gallery.new('g1','Houston')
g2 = Gallery.new('g2','Dallas')
g3 = Gallery.new('g3', 'Austin')
p1 = Painting.new('p1',300, g1, artist1)
p2 = Painting.new('p2',400, g1, artist2)
p3 = Painting.new('p3',100,g3, artist1)
artist1.create_painting('p4',500,g1)
artist1.create_painting('p5',200,g2)
artist1.create_painting('p6',600,g1)
artist2.create_painting('p7', 150, g2)



binding.pry

puts "Bob Ross rules."
