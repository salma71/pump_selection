class PumpSelection::Series
  attr_accessor  :name, :series
  def self.range
    #scrap packopumps then return the product range list
    self.scrap_ranges
  end
  #return the packo wide range of st.st pumps
  def self.scrap_ranges
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
      doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
      product = self.new
      product.name = ele.css("a.desc").text
      product
    end
  end
  def self.scrap_general_ind
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/general-industrial-pumps"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
      series = self.new
      series.name = ele.css("a.desc span.title").text
      series
    # binding.pry
      end
  end
  def self.scrap_hyg_ind
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/hygienic-pumps"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
      series = self.new
      series.name = ele.css("a.desc span.title").text
      series
    # binding.pry
      end
  end
end
