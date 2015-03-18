require 'docking_station'

describe DockingStation do
  it 'can dock a bike' do
    subject.dock Bike.new
    expect(subject.bikes.length).to eq 1
  end

  it 'raises error when no bikes available' do
    expect { subject.release_bike }.to raise_error 'No Bikes Available'
  end

  it 'raises an error when full' do
    20.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Station Full'
  end

  it 'does not release broken bikes' do
    broken_bike = double :bike, broken?: true
    subject.dock broken_bike
    expect { subject.release_bike }.to raise_error 'No Bikes Available'
  end
end
