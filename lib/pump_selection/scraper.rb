# // the working version
class PumpSelection::Scraper


  attr_accessor  :name, :series

  @@all = []

  def initialize(name=nil, series=nil)
   @name = name
   @series = series

  end
  def self.all
   @@all
  end

  def self.display_product
    @@all.each.with_index(1) do |product, i|
      puts "   #{i}.   #{product.name}"
    end
  end

  def self.scarp
    @doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps"))
    @scraping_block = @doc.css("div.listingByBlockContainer div.categoryBlock")
  end

  def self.scrape_product
      @scraping_block.each do |ele|
        name = ele.css("a.desc").text.strip
        series = ele.css("div.sub ul li").text.strip
        product = self.new(name, series)
        @@all << product
        # binding.pry
    end
  end



  def self.display_series(input)
    index = input.to_i - 1
    puts " - - - - - - - - - - - - - - - - - - - - #{@@all[index].series}"
    # binding.pry
  end
end
