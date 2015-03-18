require 'capybara/rspec'
require 'docking_station'
require 'garage'
require 'van'

feature 'Van transports bikes' do
  let(:van) { Van.new }
  let(:docking_station) { DockingStation.new }
  let(:garage) { Garage.new }
end
