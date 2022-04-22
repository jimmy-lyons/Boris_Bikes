class DockingStation

  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
   @bikes.empty? ? fail : @bikes[0]
   released_bike = @bikes[0]
   @bikes.delete(0)
   released_bike
  end

  def dock_bike(bike)
    fail unless @bikes.length < @capacity
    @bikes << bike
  end

  attr_accessor :bikes
  attr_reader :capacity
end
