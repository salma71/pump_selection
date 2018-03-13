# // the working version
class PumpSelection::Series
  attr_accessor  :name, :series

  def self.scrape_level_one
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
      doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
      product = self.new
      product.name = ele.css("a.desc").text.strip
      # product.series = ele.css("div.sub ul li").text.strip
      product
    end
  end
  def self.scrape_level_two
      doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
      #get each pump series_list
      doc.search("div.listingByBlock div.categoryBlock div.sub ul li").collect do |series|
        all_series = self.new
        all_series.name = series.text.strip
        all_series
    end
  end
end
