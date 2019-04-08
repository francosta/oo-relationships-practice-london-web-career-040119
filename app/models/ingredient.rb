class Ingredient

  attr_accessor :all, :dessert, :name

  @@all = []

  def initialize(calorie_count, dessert)
    @calorie_count = calorie_count
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

end
