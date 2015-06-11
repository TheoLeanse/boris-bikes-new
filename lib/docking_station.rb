require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize capacity=DEFAULT_CAPACITY
    @bikes = []
    @capacity = capacity
  end

  def dock bike
    fail 'Docking station full' if full?
    bikes << bike
  end

  def release_bike
    bikes.each { |bike| return emit bike if bike.working? }
    fail "No bikes available" # unless working_bike_available? # could there be an unless thing here
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def emit bike
    bikes.delete(bike)
  end

  # def empty?
  #   bikes.empty?
  # end



  # def working_bike_available?
  #   some stuff?
  # end

end
