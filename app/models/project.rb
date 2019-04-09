class Project

  attr_reader :user, :name

  @@all = []

  def initialize(creator, name, goal)
    @user_creator = creator
    @name = name
    @goal = goal
    @@all << self
  end

  def self.all
    @@all
  end

end
