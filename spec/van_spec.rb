require 'van'

describe Van do
  it 'accepts bikes' do
    station = double :docking_station
    broken_bike = double :bike, broken?: true
    allow(station).to receive(:release_bike).and_return(broken_bike)
    5.times { subject.dock(station.release_bike) }
    expect(subject.bikes.length).to eq 5
  end
  it 'does not accept working bikes' do
    working_bike = double :bike, broken?: false
    expect { subject.dock(working_bike) }.to raise_error 'Bike in working order'
  end
end
