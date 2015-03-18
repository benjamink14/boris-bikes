require 'garage'

describe Garage do
  it 'should not release broken bikes' do
    subject.dock(double :bike, broken?: true)
    expect(subject.release_bike).to raise_error 'Can not release broken bike'
  end
end
