require 'docking_station'

describe DockingStation do
  subject { described_class.new(capacity: 123) }
  # Should we delete these error tests? We don't look for them in bike container
  it 'raises error when no bikes available' do
    expect { subject.release_bike }.to raise_error 'No Bikes Available'
  end

  it 'raises an error when full' do
    123.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Station Full'
  end

  it 'does not release broken bikes' do
    broken_bike = double :bike, broken?: true
    subject.dock broken_bike
    expect { subject.release_bike }.to raise_error 'No Bikes Available'
  end

  it 'can set a default capacity on initialising' do
    expect(subject.capacity).to eq(123)
  end
end
