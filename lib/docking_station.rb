require_relative "bike"

class DockingStation


  def dock bike
    @bike = bike
  end

  def release_bike
    fail 'No bikes available' if !@bike
    @bike
  end

end
