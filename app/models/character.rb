class Character

  attr_reader :name, :script, :actor, :all

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def scripts
    (MovieScript.all.concat ShowScript.all).select {|script| script.character == self}.uniq
  end

  def self.most_appearances
     @@all.max_by { |character| character.scripts.length }
  end

end
