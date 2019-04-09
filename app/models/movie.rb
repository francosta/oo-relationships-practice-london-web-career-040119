class Movie

  attr_reader :name, :all

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appearances
   MovieScript.all.select { |ma| ma.movie == self }
 end

 def characters
    appearances.map { |ma| ma.character }.uniq
 end
 #
 def actors
   characters.map { |char| char.actor }.uniq
 end

 def actor_count
   actors.length
 end

 def self.most_actors
   @@all.max_by { |movie| movie.actor_count }
 end

end
