require 'bike'

describe Bike do
  it 'is it working?' do
    bike = Bike.new

    expect(bike.working?).to eq(true)
  end
end
