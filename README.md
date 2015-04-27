The idea of this project is to enable people to rent bikes from a docking station and return them to any other docking station. If a bike is broken, then it is unable to be rented out, and needs to be taken to a garage. At that point, if the bike is broken, a van needs to be called - which will return the fixed bike to a docking station, so it can be used.

The van, docking stations and garage all have a fixed number of bikes they can take, so there is a maximum capacity.

We have a library of classes (currently only Bikes and DockingStations) and a suite of tests (unit tests for Bike and DockingStation and an overall feature test)

The Bike class has a method to see if it's broken (which is empty, therefore nil, at the moment). The DockingStation has a release_bike method to allow the release of a bike, if it is available. It accepts an instance variable in the form of :bike.
