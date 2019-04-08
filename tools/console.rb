require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Listing.new("London")
l2 = Listing.new("Machester")
l3 = Listing.new("Liverpool")

g1 = Guest.new("Fran")
g2 = Guest.new("Adam")
g3 = Guest.new("Barbara")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g1, l2)
t3 = Trip.new(g3, l2)


Pry.start
