class PumpSelection::Series
  attr_accessor :name, :url
  def self.model
    # puts <<-DOC
    # 1. FP2 +
    # 2. PHP
    # DOC
    series_1 = self.new
    series_1.name = "FP2 +"
    series_1.url = "http://www.packopumps.com"

    series_2 = self.new
    series_2.name = "PHP"
    series_2.url = "http://www.packopumps.com/en/products"

    [series_1, series_2]
  end
end
