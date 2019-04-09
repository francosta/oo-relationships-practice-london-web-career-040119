class Actor

  attr_reader :name, :all

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    Character.all.select {|character| character.actor == self}
  end

  def self.most_characters
    @@all.max_by {|actor| actor.characters.length}
  end

end
