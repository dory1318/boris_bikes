require './lib/bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :stored_bikes
  def initialize
    @stored_bikes = []
  end

  def release_bike
      fail 'Error, no bikes available!' if empty?
      @stored_bikes.pop
  end

  def dock_bike (bike)
    fail 'Error, Another bike already docked' if full?
    @stored_bikes << bike
  end

private

  def full?
    @stored_bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @stored_bikes.empty?
  end
end
