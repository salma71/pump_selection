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
    name = URI.encode(gets.strip)
    agent = Mechanize.new
      page = agent.get("http://www.packopumps.com/en/products/different-kind-of-pumps/#{name}")
      #get each pump series_list
      page.search("div.categoryBlock").collect do |ele|
        all_series = self.new
        # binding.pry
        all_series.name = ele.text
        # .scan(/\w+/)
        all_series
      end
  end
end
