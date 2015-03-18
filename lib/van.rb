require_relative 'bike'
require_relative 'bike_container'

class Van < BikeContainer
  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end
end
