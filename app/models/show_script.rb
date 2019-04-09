class ShowScript

  attr_reader :character, :show

  @@all = []

  def initialize(show, character)
    @show = show
    @character = character
    @@all << self
  end

  def self.all
   @@all
 end

end
