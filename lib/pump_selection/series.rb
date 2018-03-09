class PumpSelection::Series
  attr_accessor  :name, :series
  def self.range
    #scrap packopumps then return the product range list
    self.scrap_home_page
  end
  #return the packo wide range of st.st pumps
  def self.scrap_home_page
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
      doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
      product = self.new
      product.name = ele.css("a.desc").text
      product
    end
  end
end
