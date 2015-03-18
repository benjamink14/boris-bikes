require 'van'

describe Van do
  it 'accepts bikes' do
    station = double :docking_station
    allow(station).to receive(:release_bike).and_return(:bike)
    5.times { subject.dock(station.release_bike) }
    expect(subject.bikes.length).to eq 5
  end
end
