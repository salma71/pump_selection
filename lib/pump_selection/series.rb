# // the working version
class PumpSelection::Series
  attr_accessor  :name

  def self.scrape_level_one
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps"))
      doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
      product = self.new
      product.name = ele.css("a.desc").text
      product
      # binding.pry
    end
  end
  def self.scrape_level_two
      doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
      #get each pump series_list
      doc.search("div.listingByBlock div.categoryBlock div.sub ul li").collect do |series|
        all_series = self.new
        # binding.pry
        all_series.name = series.text.strip
        all_series
        # binding.pry
    end
  end
end
