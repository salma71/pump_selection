
class PumpSelection::CLI

  def call
    welcome
    puts "    "
    options

    end
  def welcome
    puts "__________________________________________________________________"
    puts " "
    puts "---------------- Welcome to packopumps website -------------------"
    puts "__________________________________________________________________"
      sleep (1)
    puts "Please select one of the options below to discover the website"
    puts "***************************************"

    puts " __ Please type 'show list of pumps' for pumps list or the number you need more info about"
    puts " "

    puts " __ If you need to explore each pump related series type it's number in the list then hit enter"
    puts " "

    puts " __ Type 'close' to exit the application"
  end

  def options
    input = "nil"
    puts "Please enter your input  below this line"
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
      puts "   "
      input = gets.strip.downcase
      case input
      when "show list of pumps"
        puts "-------------------------------------"
        puts " "
        list_product(0, 3)
        puts "need more? please type 'y'"
        answer = gets.strip
        if answer == "y"
        list_product(3, 3)
        end
        puts "need more?"
        answer = gets.strip
        if answer == "y"
        puts "No more pumps!"
        end
        puts "-------------------------------------"
          options
          puts " "
      when "1"
        puts "For industrial pumps series"
        puts "-------------------------------------"
          list_series(input)
        options
        puts "-------------------------------------"
        when "2"
        puts "For hygienic pumps series"
        puts "-------------------------------------"
        list_series(input)
        options
        puts "-------------------------------------"
        when "3"
        puts "For pharmaceutical pumps series"
        puts "-------------------------------------"
        list_series(input)
        options
        puts "-------------------------------------"
        when "4"
        puts "For mixing technology solutions"
        puts "-------------------------------------"
        list_series(input)
        options
        puts "-------------------------------------"
        when "5"
        puts "For series for OEMs"
        puts "-------------------------------------"
        list_series(input)
        options
        puts "-------------------------------------"
        when "6"
        puts "For specific custom made solutions"
        puts "-------------------------------------"
        list_series(input)
        options
        puts "-------------------------------------"
        when "close"
        close_app
      end
  end

  def list_product(start_num, end_num)
    PumpSelection::Scraper.scarp
    PumpSelection::Scraper.scrape_product
    PumpSelection::Product.all.slice(start_num, end_num).each.with_index(start_num + 1) do |product, i|
          puts "   #{i}.   #{product.name}"
    end
  end
  # Project Display
  #  pump1
  #  pump2
  #  more
  #  pump3
  # pump4
  # more #=> 'no more pumps'
#   alicekb
# Alice@flatironschool.com
  def list_series(input)
   puts PumpSelection::Product.all[input.to_i - 1].series
  end

  private
  def close_app
    puts "Exiting the application..."
    sleep (1)
    puts "Thank you"
    sleep (1)
    exit
  end
end
