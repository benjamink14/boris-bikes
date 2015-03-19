require_relative 'bike'
require_relative 'bike_container'

class Van
  include BikeContainer
  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def dock bike
    super
    fail 'Bike in working order' unless bike.broken?
  end
end
