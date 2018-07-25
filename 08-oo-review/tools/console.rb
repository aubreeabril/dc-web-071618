require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# your seed data goes here

nancy = User.new("Nancy", "Negative")
doug = User.new("Doug", "Funnie")
tom = User.new("Tom", "@myspace")

# #
piper = Album.new("The Piper at the Gates of Dawn", "Pink Floyd", 1967)
pepper = Album.new("Sgt Pepper's Lonely Hearts Club Band", "The Beatles", 1967)
aretha = Album.new("Aretha Arrives", "Aretha Franklin", 1967)

# #
r1 = Review.new(nancy, piper, "This album sucks")
r2 = Review.new(nancy, pepper, "This album is even worse than the last one")
r3 = Review.new(nancy, aretha, "Seriously give me something I can dance to")
r4 = Review.new(doug, piper, "I think it's swell")
r5 = Review.new(doug, pepper, "Better than the last one")
r6 = Review.new(tom, aretha, "Aretha was my first friend - love the album")
r7 = Review.new(tom, aretha, "Still holds up all these years later")



Pry.start
