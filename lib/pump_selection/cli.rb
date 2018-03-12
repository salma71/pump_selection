class PumpSelection::CLI
  attr_accessor :name
  def call
    welcome
    puts "    "
    options

    end
  def welcome

    puts "Welcome to packopumps website"
    puts "   "
      sleep (1)
      # welcome_message
    puts "Please select one of the options below to discover the website"
    puts "***************************************"
    # sleep (1)
    puts " 1. Please type 'show product list' for product range list".blue
    puts " "
    # sleep (1)
    puts " 2. To show products avaliable series please type 'show series list'".green
    puts " "
    # sleep (1)
    puts " 3. Type 'close' to exit"
  end

  def options
    input = "nil"
    while input != "close"
      puts "   "
      input = gets.strip.downcase
      if input == "show product list"
        puts "-------------------------------------"
        list_ranges
        puts "please type 'show series list' then hit enter twice"
      elsif input == "show series list"
        list_series
        puts "______________________________________"
      elsif input == "close"
        close_app
      else
        puts "Not sure what you want to do please select one of the options above".red
      end
    end
  end

  def list_ranges
    @product_range = PumpSelection::Series.scrape_level_one
    range_of_products = @product_range.slice(0, 6)
      range_of_products.each.with_index(1) do |item, i|
    puts " #{i}. #{item.name.strip}".blue
    end
  end
  def list_series
    @all_series = PumpSelection::Series.scrape_level_two
    @all_series.each.with_index(1) do |item, i|
      # binding.pry
      puts " #{i}. #{item.name.strip}".green
    end
  end
end

private
def close_app
  puts "Exiting the application...".red
  sleep (1)
  puts "Thank you".green
  sleep (1)
  exit
end
