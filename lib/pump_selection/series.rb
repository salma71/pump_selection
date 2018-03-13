# // the working version
class PumpSelection::Series
  attr_accessor  :name, :series

  @@all = []


  # def self.new_from_index_page(pro)
  #   self.new(
  #     pro.css("div.listingByBlockContainer div.categoryBlock a.desc").text,
  #     "http://www.packopumps.com#{pro.css("a").attribute("href").text}"
  #   )
  # end
  def initialize(name=nil, series=nil, url=nil)
    @name = name
    @series = series
    # @specs = specs
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find(id)
    self.all[id - 1]
  end
# def new_from_index_page(pro)
#   self.new (pro.css("div.listingByBlockContainer div.categoryBlock a.desc").text
#     pro.css("div.listingByBlockContainer div.categoryBlock div.sub ul li").text)
# end
  def self.scrape_product
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
      doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
      product = self.new
      product.name = ele.css("a.desc").text.strip
      product.series = ele.css("div.sub ul li").text.strip
      product
    end
  end
  # def self.scrape_series
  #   doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
  #     doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
  #     product = self.new
  #     product.name = ele.css("a.desc").text.strip
  #     product.series = ele.css("div.sub ul li").text.strip
  #     # binding.pry
  #     product
  #   end
  # end
  # def self.scrape_level_two(ind)
  #     doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/#{ind}"))
  #     #get each pump series_list
  #     doc.search("div.listingByBlock div.categoryBlock div.sub ul li").collect do |series|
  #       all_series = self.new
  #       all_series.name = series.text.strip
  #       all_series
  #   end
  # end
  def self.scrape_href
    doc = Nokogiri::HTML(open("http://www.packopumps.com"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
        # binding.pry
      series = self.new
      series.name = ele.css("a").attribute("href").text
      series
    binding.pry
      end
  end
  def self.scrape_general_ind
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/general-industrial-pumps"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
        # binding.pry
      series = self.new
      series.name = ele.css("a.desc span.title").text
      series
    binding.pry
      end
  end
  def self.href_scrape
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
    doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
      # binding.pry
    href_list = self.new
    href_list.name = ele.css("a").attribute("href").text
    # binding.pry
    href_list
  end
  end
  def self.scrape_hyg_ind
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/hygienic-pumps"))
      doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
      series = self.new
      series.name = ele.css("a.desc span.title").text
      serie
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
