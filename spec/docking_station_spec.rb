require 'docking_station'

describe DockingStation do
  subject { described_class.new(capacity: 123) }
  # Should we delete these error tests? We don't look for them in bike container

  # Should also work with method release_broken_bikes
  it 'raises error when no bikes available' do
    expect { subject.release_bike }.to raise_error 'No Bikes Available'
  end

  it 'raises an error when full' do
    123.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Station Full'
  end

  it 'can set a default capacity on initialising' do
    expect(subject.capacity).to eq(123)
  end

  it 'can release all broken bikes' do
    5.times { subject.dock(double :bike, broken?: true) }
  end
end
