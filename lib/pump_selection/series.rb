class PumpSelection::Series
  attr_accessor  :name, :series
  def self.range
    #scrap packopumps then return the product range list
    self.scrap_home_page
  end
  # def self.scrap_product_range
  #   product_range = []
  #   product_range << scrap_home_page
  #   product_range
  # end
  def self.scrap_home_page
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
    product = self.new
    product.name = doc.css("div a.desc").map(&:text)
  end
end
