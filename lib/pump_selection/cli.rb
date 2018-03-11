class PumpSelection::CLI
  attr_accessor :name
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
    puts " To show products avaliable series please type 'show series list')"
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
      elsif input == "show series list"
        list_series
        puts "______________________________________"
      elsif input == "close"
        close_app
      else
        puts "Not sure what you want to do please select one of the options"
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
      @all_series.each.with_index(1) do |item, i|
        # binding.pry
        puts " #{i}. #{item.name.strip}"
      end
    end
end

private
def close_app
  puts "Exiting the application..."
  sleep (1)
  puts "Thank you"
  sleep (1)
  exit
end
