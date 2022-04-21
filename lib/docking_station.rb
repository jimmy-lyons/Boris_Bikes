class DockingStation

  def initialize
    @bike = nil
  end

  def release_bike
   @bike == nil ? fail : Bike.new
  end

  def dock_bike(bike)
    @bike == nil ? @bike = bike : fail
    "Bike Docked"
  end

  attr_accessor :bike
end
