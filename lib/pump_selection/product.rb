class PumpSelection::Product
  attr_accessor  :name, :series

  @@all = []

  def initialize(name=nil, series=nil)
   @name = name
   @series = series
   self
  end

  def self.all
   @@all
  end
end
