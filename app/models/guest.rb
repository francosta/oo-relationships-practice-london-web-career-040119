class Guest

  attr_reader :name
  attr_accessor :all, :trips

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #returns an array for all trips this guest has taken
  def trips
    Trip.all.select do |trip|
      if trip.guest == self
        trip
      end
    end
  end

  #takes an argument of a name (as a string) and returns all the guests with that name
  def self.find_all_by_name(name)
    self.all.select do |guest|
      if guest.name == name
        guest
      end
    end
  end

  #returns an array of all guests who have made over 1 trip
  def self.pro_traveller
    @@all.select {|guest| guest.trip_count > 1}
  end

  #returns an array of all listings where the guest has stayed
  def listings
    self.trips.map {|trip| trip.listing}.uniq
  end

  #returns the number of trips a guest has taken
  def trip_count
    trips.length
  end

end
