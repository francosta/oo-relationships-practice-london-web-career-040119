class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def create_project(name, goal)
    Project.new(self, name, goal)
  end

  def back_project(project, amount)
    Pledge.new(self, project, amount)
  end

  def self.highest_pledge
    Pledge.all.max_by {|pledge| pledge.amount}.user
  end

  def pledges
    Pledge.all.select {|pledge| pledge.user == self}
  end

  def pledge_count
    pledges.count
  end

  def self.multi_pledger
   @@all.select {|user| if user.pledge_count > 1 then user end}
  end

end
