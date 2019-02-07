require_relative 'bike'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length == DEFAULT_CAPACITY
  end

  def release_bike
    raise "No bikes to release" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Maximum capacity reached" if full?
    @bikes << bike
  end

  private :empty?, :full?

end
