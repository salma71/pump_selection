# class PumpSelection::Scrape
#   def get_page
#     Nokogiri::HTML(open("http://www.packopumps.com/en/products"))
#   end
#   def scrape_product_index
#       self.get_page.css("div.listingByBlockContainer div.categoryBlock")
#   end
#   def make_products
#     scrape_product_index.each do |pro|
#       PumpSelection::Series.new_from_index_page(pro)
#     end
#   end
# end
