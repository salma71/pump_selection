class PumpSelection::CLI

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
    puts " __ Please type 'show product list' for product range list"
    puts " "
    # sleep (1)
    puts " 1 for general industries pump series"
    puts "______________________________"
    # sleep (1)
    puts " 2 for hygienic pumps series"
    puts "______________________________"
    # sleep (1)
    puts " 3 for pharmaceutical pumps series"
    puts "______________________________"
    # sleep (1)
    puts " 4 for mixing technology"
    puts "______________________________"
    # sleep (1)
    puts " Type 'close' to exit"
  end

  def options
    input = "nil"
      puts "   "
      input = gets.strip.downcase
      if input == "show product list"
        puts "-------------------------------------"
        list_product
        options
      elsif input == "1"
        puts "For industrial pumps series"
        list_ind_series
        options
      elsif input == "2"
        puts "For hygienic pumps series"
        list_hyg_series
        options
      elsif input == "3"
        puts "For pharmaceutical pumps series"
        list_pharma_series
        options
      elsif input == "4"
        puts "For mixing technology solutions"
        list_mix_series
        options
      elsif input == "close"
        close_app
      else
        puts "Not sure what you want to do please select one of the options"
        #write a method that list all the options again
      end
  end
  def list_product
    @product_range = PumpSelection::Series.scrape_product
    @product_range.each.with_index(1) do |item, i|
    puts " #{i}. #{item.name.strip}".blue
    end
  end
  # def list_related_series
  #   @product_series = PumpSelection::Series.scrape_series
  #   # binding.pry
  #   @product_series
  #   binding.pry
  #   @product_series.each.with_index(1) do |item, i|
  #   puts " #{i}. #{item.name}"
  #   end
  # end
  # def print_series(series)
  #   puts "#{series.name}"
  # end
  def list_ind_series
    @product_series = PumpSelection::Series.scrape_general_ind
    # binding.pry
    @product_series.each.with_index(1) do |item, i|
    puts "#{i}. #{item.name}"
    end
  end
  def list_hyg_series
    @product_series = PumpSelection::Series.scrape_hyg_ind
    # binding.pry
    @product_series.each.with_index(1) do |item, i|
    puts "#{i}. #{item.name}"
    end
  end
  def list_pharma_series
    @product_series = PumpSelection::Series.scrape_pharma_ind
    # binding.pry
    @product_series.each.with_index(1) do |item, i|
    puts "#{i}. #{item.name}"
    end
  end
  def list_mix_series
    @product_series = PumpSelection::Series.scrape_mix_ind
    # binding.pry
    @product_series.each.with_index(1) do |item, i|
    puts "#{i}. #{item.name}"
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
