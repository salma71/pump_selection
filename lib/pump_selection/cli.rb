class PumpSelection::CLI
  attr_accessor :ind
  def call
    welcome
    puts "    "
    options

    end
  def welcome
    puts "Welcome to packopumps website"
      sleep (1)
      # welcome_message
    puts "Please select one of the options below to discover the website"
    puts "***************************************"
    # sleep (1)
    puts " Please type 'show list' for product range list"
    puts " "
    # sleep (1)
    puts " To show each product avaliable series please type the product name listed in product list seperated by dashed (ex. hygienic-pumps)"
    puts " "
    # sleep (1)
    puts " Type 'close' to exit"
  end

  def options
    input = "nil"
    while input != "close"
      puts "Please select another series to show or type 'show list'"
      input = gets.strip.downcase
      if input == "show list"
        puts "-------------------------------------"
        list_ranges
      elsif input == "1"
        puts "anything"
        answer = gets.strip.downcase
        list_series
        puts "______________________________________"
      # elsif input == "#{hygienic-pumps}"
      #   puts "For hygienic pumps series"
      #   list_series
      #   puts "______________________________________"
      #   elsif input == "pharmaceutical-pumps"
      #   puts "For pharmaceutical pumps series"
      #   list_series
      #   puts "______________________________________"
      # elsif input == "mixing-technologies"
      #   puts "For mixing technology solutions"
      #   list_series
      # elsif input == "oem-pumps"
      #   puts "For OEM pumps"
      #   list_series
      #   puts "______________________________________"
      #   elsif input == "specific-custom-made-solutions"
      #   puts "For specific custom made solutions series"
      #   list_series
      #   puts "______________________________________"
      elsif input == "close"
        close_app
      else
        puts "Not sure what you want to do please select one of the options"
        #write a method that list all the options again
      end
    end
  end

  def list_ranges
    @product_range = PumpSelection::Series.scrape_ranges
    range_of_products = @product_range.slice(0, 6)
      range_of_products.each.with_index(1) do |item, i|
    puts " #{i}. #{item.name.strip}"
    end
  end
  def list_series
    @all_series = PumpSelection::Series.scrape_level_one
      @series = @all_series.collect do |item|
        # binding.pry
        item.name
      end
      @series
      binding.pry
  end
end
  # def list_industrial_series
  #   @product_series = PumpSelection::Series.scrape_general_ind
  #   range_of_series = @product_series.slice(0, 3)
  #   binding.pry
  #   range_of_series.each.with_index(1) do |item, i|
  #   puts " #{i}. #{item.name}"
  #   end
  # end
  # def list_hyg_series
  #   @product_series = PumpSelection::Series.scrape_hyg_ind
  #   range_of_series = @product_series.slice(0, 3)
  #   # binding.pry
  #   @product_series.each.with_index(1) do |item, i|
  #   puts "#{i}. #{item.name}"
  #   end
  # end
  # def list_pharma_series
  #   @product_series = PumpSelection::Series.scrape_pharma_ind
  #   # binding.pry
  #   @product_series.each.with_index(1) do |item, i|
  #   puts "#{i}. #{item.name}"
  #   end
  # end
  # def list_mix_series
  #   @product_series = PumpSelection::Series.scrape_mix_ind
  #   # binding.pry
  #   @product_series.each.with_index(1) do |item, i|
  #   puts "#{i}. #{item.name}"
  #   end
  # end
  # def more_info_ind
  #   @info = PumpSelection::Series.scrape_more_info
  #   @info.each do |item|
  #   puts " #{item.name}"
  #   end
  # end

private
def close_app
  puts "Exiting the application..."
  sleep (1)
  puts "Thank you"
  sleep (1)
  exit
end
