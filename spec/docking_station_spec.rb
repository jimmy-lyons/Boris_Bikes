require 'docking_station'

describe DockingStation do
  # unit test
  it 'releases bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.bike = bike
    expect{docking_station.release_bike}.not_to raise_error
  end

  # feature test
  it 'release working bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.bike = bike
    released_bike = docking_station.release_bike
    expect(released_bike.working?).to eq(true)
  end

  it 'docks bike at docking station' do
    docking_station = DockingStation.new
    bike = Bike.new

    expect(docking_station.dock_bike(bike)).to eq("Bike Docked")
  end

  it 'bike dock method works' do
    docking_station = DockingStation.new
    bike = Bike.new

    expect{docking_station.dock_bike(bike)}.not_to raise_error
  end

  it 'user stores bike and docking station tells user its not empty' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)

    expect(docking_station.bike).to eq(bike)
  end

  it 'no bike is released if docking station is empty' do
    docking_station = DockingStation.new
    @bike = nil
    expect{docking_station.release_bike}.to raise_error
  end

  it 'does not let you put more than one bike in a docking station' do
    docking_station = DockingStation.new
    bike = Bike.new
    bike2 = Bike.new
    docking_station.bike = bike

    expect{docking_station.dock_bike(bike2)}.to raise_error
  end
  
end
