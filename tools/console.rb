require_relative '../config/environment.rb'

Sam = Artist.new("Sam", 20.8)
Paul = Artist.new("Paul", 10.5)
Jane = Artist.new("Jane", 15.3)

Houston_gallery = Gallery.new("H Town", "Houston")
SF_gallery = Gallery.new("Valley", "SF")
NY_gallery = Gallery.new("New yorker", "NYC")

stars = Painting.new("stars", 5000.88, Sam, Houston_gallery)   #not "Sam" and houston_gallery, not "H Town"
moons = Painting.new("moons", 400.66, Paul, SF_gallery)
animals = Painting.new("animals", 6000.55, Jane, NY_gallery)
happy = Painting.new("happy", 6666, Jane, Houston_gallery)
updet = Painting.new("upset", 200000, Paul, SF_gallery)
starry_night = Painting.new('Starry Night', 90273593.88, Sam, NY_gallery)



Henry = Artist.new("Henry", 25)
henry_painting = Henry.create_painting("Hi", 73285, SF_gallery)
#Houston_gallery.artist_names
binding.pry

puts "Bob Ross rules."
