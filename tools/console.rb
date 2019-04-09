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
i9 = Ingredient.new("chocolate cream", 25, d2)

s1 = Show.new("The Crown")
s2 = Show.new("Fleabag")
s3 = Show.new("Veep")
s4 = Show.new("Seinfeld")
s5 = Show.new("Star Trek")
s6 = Show.new("The New Adventures of Old Christine")

m1 = Movie.new("The Favourite")
m2 = Movie.new("First Man")
m3 = Movie.new("Mission Impossible: Fallout")
m4 = Movie.new("Star Trek")

a1 = Actor.new("Claire Foy")
a2 = Actor.new("Julia Louis-Dreyfus")
a3 = Actor.new("Olivia Colman")
a4 = Actor.new("Tom Cruise")
a5 = Actor.new("Ryan Gosling")
a6 = Actor.new("Michael Dorn")
a7 = Actor.new("Patrick Stewart")

ch1 = Character.new("Selina Meyer", a2)
ch2 = Character.new("Queen Elizabeth", a1)
ch3 = Character.new("Queen Anne", a3)
ch4 = Character.new("Ethan Hunt", a4)
ch5 = Character.new("Godmother", a3)
ch6 = Character.new("Janet Shearon", a1)
ch7 = Character.new("Elaine Benes", a2)
ch8 = Character.new("Neil Arsmtrong", a5)
ch9 = Character.new("Worf", a6)
ch10 = Character.new("Jean-Luc Picard", a7)
ch11 = Character.new("Christine", a2)

tv_scr1 = ShowScript.new(s1, ch2)
tv_scr2 = ShowScript.new(s2, ch5)
tv_scr3 = ShowScript.new(s3, ch1)
tv_scr4 = ShowScript.new(s4, ch7)
tv_scr5 = ShowScript.new(s5, ch9)
tv_scr6 = ShowScript.new(s6, ch11)

mov_scr1 = MovieScript.new(m1, ch3)
mov_scr2 = MovieScript.new(m2, ch6)
mov_scr3 = MovieScript.new(m3, ch4)
mov_scr4 = MovieScript.new(m2, ch8)
mov_scr5 = MovieScript.new(m4, ch10)
mov_scr6 = MovieScript.new(m4, ch9)

Pry.start
