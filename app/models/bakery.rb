class Bakery

  attr_accessor :all, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def ingredients

    my_desserts = Dessert.all.select {|dessert| dessert.bakery == self}
    my_desserts.each do |dessert|
      Ingredient.all.each {|ingredient| if ingredient.dessert == dessert then ingredient end}
    end
  end

  #   ingredients = []
  #   my_desserts = Dessert.all.select {|dessert| dessert.bakery == self}
  #   my_desserts.each do |dessert|
  #     Ingredient.all.each do |ingredient|
  #       if ingredient.dessert == dessert
  #         ingredients << ingredient
  #       end
  #     end
  #   end
  #   ingredients
  # end

end
