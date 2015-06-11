require_relative 'bike'

class DockingStation

  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock bike
    fail 'Docking station full' if full?

    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?

    @bikes.pop
  end

  private

  def full?
    @bikes && @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
