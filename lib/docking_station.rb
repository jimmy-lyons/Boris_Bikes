class DockingStation

  def initialize
    @bike = nil
  end

  def release_bike
   @bike == nil ? fail "No bikes available" : Bike.new
  end

  def dock_bike(bike)
    @bike = bike
    "Bike Docked"
  end

  attr_accessor :bike
end
