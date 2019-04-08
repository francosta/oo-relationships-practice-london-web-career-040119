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

b1 = Bakery.new("Bread & More")
b2 = Bakery.new("British Loaves")
b3 = Bakery.new("French Bakery")

d1 = Dessert.new("Cheesecake", b1)
d2 = Dessert.new("Chocolate Syrup", b2)
d3 = Dessert.new("Fruit ice cream", b1)

i1 = Ingredient.new("chocolate", 10, d2)
i2 = Ingredient.new("cream", 15, d1)
i3 = Ingredient.new("strawberry", 20, d3)
i4 = Ingredient.new("jam", 15, d1)
i5 = Ingredient.new("egg", 20, d2)
i6 = Ingredient.new("strawberry", 20, d1)
i7 = Ingredient.new("cookie dough", 20, d1)
i8 = Ingredient.new("cream", 15, d3)


Pry.start
