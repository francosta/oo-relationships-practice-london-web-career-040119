class Listing

  attr_reader :name
  attr_accessor :all, :trips, :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  #returns an array for all trips in this listing
  def trips
    Trip.all.select do |trip|
      if trip.listing == self
        trip
      end
    end
  end

  #returns an array of all guests who have stayed at a listing
  def guests
    trips.map {|trip| trip.guest}.uniq
  end

  def create_trip(guest)
    Trip.new(guest, self)
  end

  #returns the number of trips that have been taken to that listing
  def trip_count
    self.trips.count
  end

  #takes an argument of a city name (as a string) and returns all the listings for that city
  def self.find_all_by_city(city)
    self.all.select {|listing| if listing.city == city then listing end}
  end

  def self.most_popular
    listings_count = {}
    @@all.each {|listing| listings_count[listing] = 0}

    listings_count.select do |listing_for_count|
      Trip.all.each do |trip|
        if trip.listing == listing_for_count
          listings_count[listing_for_count] += 1
        end
      end
    end

    listings_count.max_by {|city, count| count}[0]

  end



end
