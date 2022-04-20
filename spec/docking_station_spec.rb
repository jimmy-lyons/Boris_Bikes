require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    docking_station = DockingStation.new

    expect(docking_station.release_bike).to eq("release")
  end
end