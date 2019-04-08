class Dessert

  attr_accessor :all, :bakery, :name

  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select {|ingredient| ingredient.dessert == self}
  end

  def calories
    total_calories = 0
    self.ingredients.each {|ingredient| total_calories += ingredient.calorie_count}
    total_calories
  end

end
