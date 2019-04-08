class Bakery

  attr_accessor :all, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def ingredients
    self.desserts.map do |dessert|
      Ingredient.all.select {|ingredient| ingredient.dessert == dessert}
    end.flatten.uniq
  end

  def desserts
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def average_calories
    total_calories = 0
    ingredients_count = self.ingredients.count
    self.ingredients.each {|ingredient| total_calories += ingredient.calorie_count}
    total_calories/ingredients_count
  end

  def self.all
    @@all
  end

  def shopping_list
    self.ingredients.map {|ingredient| ingredient.name}.join(", ")
  end

end
