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
    puts " __ Please type 'show product list' for product range list then the number you need more info in"
    puts " "
    # sleep (1)
    # puts " 1 for general industries pump series"
    # puts "______________________________"
    # # sleep (1)
    # puts " 2 for hygienic pumps series"
    # puts "______________________________"
    # # sleep (1)
    # puts " 3 for pharmaceutical pumps series"
    # puts "______________________________"
    # # sleep (1)
    # puts " 4 for mixing technology"
    # puts "______________________________"
    # # sleep (1)
    puts " Type 'close' to exit"
  end

  def options
    input = "nil"
    puts "please type the number you need know details on"
      puts "   "
      input = gets.strip.downcase
      case input
      when "0"
        puts "-------------------------------------"
        list_product
        options
        when "1"
        puts "For industrial pumps series"
        # PumpSelection::Series.find(0)
          list_series
        # binding.pry
        # list_series
        # PumpSelection::Series.scrape_product.first

        options
        when "2"
        puts "For hygienic pumps series"
        list_hyg_series
        options
        when "3"
        puts "For pharmaceutical pumps series"
        list_pharma_series
        options
        when "4"
        puts "For mixing technology solutions"
        list_mix_series
        options
        when "close"
        close_app
        puts "Not sure what you want to do please select one of the options"
        #write a method that list all the options again
      end
  end
  def list_product
    # binding.pry
    @product = PumpSelection::Series.all
    puts @product
    # products = @product_range.slice(0,6)
    # binding.pry
    # @product.each.with_index(1) do |item, i|
    #   # binding.pry
    # puts " #{i}. #{item}".blue
    # binding.pry
    # end
  end
  def list_series
    @series = PumpSelection::Series.scrape_series
    # series = @product_series.slice(0,6)
    # binding.pry
   @series.each.with_index(1) do |item, i|
      # binding.pry
      puts "#{i}. #{item}".blue
      end
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

  # def list_hyg_series
  #   @product_series = PumpSelection::Series.scrape_hyg_ind
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
# end

private
def close_app
  puts "Exiting the application...".red
  sleep (1)
  puts "Thank you".green
  sleep (1)
  exit
end
