class PumpSelection::Series
  attr_accessor :name, :url
  def self.range
    #scrap packopumps then return the product range list
    self.scrap_product_range
  end
  def self.scrap_product_range
    product_range = []
    product_range << self.scrap_packo
    product_range
  end
  def scrape_packo
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
    product = self.new
    binding.pry
  end
end
