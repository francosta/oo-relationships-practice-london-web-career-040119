class Pledge

  attr_reader :user, :project, :all, :amount

  @@all = []

  def initialize(user, project, amount)
    @user = user
    @project = project
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end


end