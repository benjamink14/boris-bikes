require_relative 'bike'
require_relative 'bike_container'

class Garage
  include BikeContainer
  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def release_bike
    super
  end

  private

  def empty?
    bikes.length == 0
  end
end
