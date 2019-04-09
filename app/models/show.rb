class Show

  attr_reader :name, :all

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def on_the_big_screen
    if
      @@all.map {|show| Movie.all.find {|movie| self.name == movie.name}}.uniq.compact.length == 1
      true
    else
      false
    end
  end

end
