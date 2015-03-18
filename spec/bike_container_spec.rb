require './lib/bike_container'

describe BikeContainer do
  let(:bike) { Bike.new }
  it 'should accept a bike' do
    expect(subject.bike_count).to eq(0)
    subject.dock(bike)
    expect(subject.bike_count).to eq(1)
  end
end
