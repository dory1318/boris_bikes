require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity
  attr_reader :stored_bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @stored_bikes = []
  end


  def release_bike
      fail 'Error, no bikes available!' if empty?
      @stored_bikes.pop
  end

  def dock_bike (bike)
    fail 'Docking station full' if full?
    @stored_bikes << bike
  end

private

  def full?
    @stored_bikes.count >= capacity
  end

  def empty?
    @stored_bikes.empty?
  end
end
