class Project

  attr_reader :user_creator, :name, :goal

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

  def self.no_pledges
    projects = Project.all
    projects_with_pledges = Pledge.all.map {|pledge| pledge.project}.uniq
    projects.select {|project| unless projects_with_pledges.include?(project) then project end}
  end

  def pledges
    Pledge.all.select {|pledge| pledge.project == self}
  end

  def total_pledged
    pledges.map {|pledge| pledge.amount}.sum
  end

  def self.above_goal
    @@all.select {|project| if project.goal < project.total_pledged then project end}
  end

  def backers
    Pledge.all.map {|pledge| if pledge.project == self then pledge.user end}.compact.uniq
  end

  def self.most_backers
    @@all.max_by {|project| project.backers.length}
  end

end
