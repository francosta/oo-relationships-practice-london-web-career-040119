class Ingredient

  attr_accessor :all, :dessert, :name, :calorie_count

  @@all = []

  def initialize(name, calorie_count, dessert)
    @name = name
    @calorie_count = calorie_count
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    @dessert.bakery
  end

  def self.find_all_by_name(name)
    @@all.select {|ingredient| ingredient.name.include?(name)}
  end

end
