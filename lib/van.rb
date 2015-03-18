require_relative 'bike'
require_relative 'bike_container'

class Van < BikeContainer
  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def dock bike
    fail 'Station Full' if full?
    fail 'Bike in working order' unless bike.broken?
    bikes << bike
  end
end
