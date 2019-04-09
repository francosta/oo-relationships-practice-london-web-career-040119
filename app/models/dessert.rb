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
    self.ingredients.collect {|ingredient| ingredient.calorie_count}.sum
  end

end
