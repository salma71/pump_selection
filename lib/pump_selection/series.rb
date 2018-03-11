class PumpSelection::Series
  attr_accessor  :name, :series, :href, :url, :about

# def self.scrape_product
#   doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
#   doc.css("div.listingByBlockContainer div.categoryBlock").each do |product_range|
#     name = product_range.css("a.desc").text
#     series = product_range("a.desc span.title").text
#     url = product_range.css("a.desc").attribute("href").value
#   end
# end

  #return the packo wide range of st.st pumps


  def self.scrape_ranges
    doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps"))
      doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
      product = self.new
      product.name = ele.css("a.desc").text
      product
      # binding.pry
    end
  end

  # def self.scrape_level_one
  #   ind = URI.encode(gets.strip)
  #   doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/#{ind}"))
  #     doc.css("div.listingByBlockContainer div.categoryBlock").collect do|ele|
  #     all_series = self.new
  #     all_series.name = ele.css("a.desc span.title").text.strip
  #     all_series
  #   end
  # end
#scraping the available series for each product
  def self.scrape_level_one

    ind = URI.encode(gets.strip)
    agent = Mechanize.new
      page = agent.get("http://www.packopumps.com/en/products/different-kind-of-pumps/#{ind}")
      #get each pump series_list
      page.search("div.categoryBlock").collect do |ele|
        all_series = self.new
        # binding.pry
        all_series.name = ele.text
        # .scan(/\w+/)
        # all_series


      end
  end

  # page = agent.get("http://www.packopumps.com/en/products/#{kind}").search("div.listingByBlockContainer div.categoryBlock").collect do |ele|
    # product = self.new
    # product.name = ele.css("a.desc").text
    # product_series = ele.css(".col")

  # series_1 = page.at("a.desc span.title").text
  # puts "type: #{name}"
  # puts "series: #{series_1}"
  # doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/general-industrial-pumps"))
  #   doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
  #   series = self.new
  #   series.name = ele.css("a.desc span.title").text
  #   series
  # # binding.pry
  #   end
#   def self.scrape_hyg_ind
#     doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/hygienic-pumps"))
#       doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
#       series = self.new
#       series.name = ele.css("a.desc span.title").text
#       series
#     # binding.pry
#       end
#   end
#   def self.scrape_pharma_ind
#     doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/pharmaceutical-pumps"))
#       doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
#       series = self.new
#       series.name = ele.css("a.desc span.title").text
#       series
#     # binding.pry
#       end
#   end
#   def self.scrape_mix_ind
#     doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/mixing-technologies"))
#       doc.css("div.listingByBlock div.categoryBlock").collect do|ele|
#       series = self.new
#       series.name = ele.css("a.desc span.title").text
#       series
#     # binding.pry
#       end
#   end
#   #one level deeper
# def self.scrape_more_info
#   doc = Nokogiri::HTML(open("http://www.packopumps.com/en/products/different-kind-of-pumps/general-industrial-pumps/np60"))
#     doc.css("section.content-row ul").collect do|ele|
#     info = self.new
#     info.name = ele.css("li").text
#     info
#   # binding.pry
#     end
# end
end
