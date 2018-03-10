class PumpSelection::Series
  attr_accessor  :name, :series, :href, :url, :urlist

  #return the packo wide range of st.st pumps
  def self.scrape_ranges
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
      doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
      product = self.new
      product.name = ele.css("a.desc").text
      product
    end
  end

  def self.scrape_general_ind
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/general-industrial-pumps"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
      series = self.new
      series.name = ele.css("a.desc span.title").text
      series
    # binding.pry
      end
  end
  def self.scrape_hyg_ind
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/hygienic-pumps"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
      series = self.new
      series.name = ele.css("a.desc span.title").text
      series
    # binding.pry
      end
  end
  def self.scrape_pharma_ind
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/pharmaceutical-pumps"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
      series = self.new
      series.name = ele.css("a.desc span.title").text
      series
    # binding.pry
      end
  end
  def self.scrape_mix_ind
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/mixing-technologies"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
      series = self.new
      series.name = ele.css("a.desc span.title").text
      series
    # binding.pry
      end
  end

end
