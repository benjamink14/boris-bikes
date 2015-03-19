require_relative 'bike'
require_relative 'bike_container'

class DockingStation
  include BikeContainer
  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

  def release_broken_bikes
    broken_bikes = []
    (0..bikes.length-1).each do |i| # rubocop: disable all
      if bikes[i].is_a? NilClass
        break
      elsif bikes[i].broken?
        broken_bikes.push(bikes[i])
        bikes.delete_at(i)
        redo
      end
    end
    return broken_bikes
  end

  def release_bike_with_index
  end
end
