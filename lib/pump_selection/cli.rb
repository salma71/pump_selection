class PumpSelection::CLI
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
    puts " 0 for product range list"
    puts " "
    # sleep (1)
    puts " 1 for general industries pump series"
    puts " "
    # sleep (1)
    puts " 2 for hygienic pumps series"
    puts " "
    # sleep (1)
    puts " 3 for pharmaceutical pumps series"
    puts " "
    # sleep (1)
    puts " 4 for mixing technology"
    puts " "
    # sleep (1)
    puts " Type 'close' to exit"
  end
  def options
    input = gets.strip.downcase
    if input == "0"
      puts "-------------------------------------"
      list_ranges

    elsif input == "1"
      puts "For industrial pumps series"
      list_industrial_series
      puts "If you need more info please type the series number"
      answer = gets.strip.downcase
      if ["NP60", "NP60","ICP1","ICP2"].include?(answer.upcase)
        more_info_ind
        puts "  "
      else
        puts "Please type the correct series name"
      end
    elsif input == "2"
      puts "For hygienic pumps series"
      list_hyg_series
      puts "If you need more info please type the series number"
      answer = gets.strip.downcase
      if ["FP60", "FP3","FP1", "FP2+"].include?(answer.upcase)
        more_information
        puts "  "
      else
        puts "Please type the correct series name"
      end
    elsif input == "3"
      puts "For pharmaceutical pumps series"
      list_pharma_series
    elsif input == "4"
      puts "For mixing technology solutions"
      list_mix_series
    elsif input == "close"
      close_app
    else
      puts "Not sure what you want to do please select one of the options"
      #write a method that list all the options again
    end

  end

  def list_ranges
    @product_range = PumpSelection::Series.scrape_ranges
    range_of_pumps = @product_range.slice(0, 6)
    # that will return the first 5 items only in the div because there are
    #two nested divs without a class and i need only the first div
    range_of_pumps.each.with_index(1) do |item, i|
    puts " #{i}. #{item.name.strip}"
    end
  end
  def list_industrial_series
    @product_series = PumpSelection::Series.scrape_general_ind
    range_of_series = @product_series.slice(0, 3)
    # binding.pry
    range_of_series.each.with_index(1) do |item, i|
    puts " #{i}. #{item.name}"
    end
  end
  def list_hyg_series
    @product_series = PumpSelection::Series.scrape_hyg_ind
    range_of_series = @product_series.slice(0, 3)
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
  def more_info_ind
    @info = PumpSelection::Series.scrape_more_info
    @info.each do |item|
    puts " #{item.name}"
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
