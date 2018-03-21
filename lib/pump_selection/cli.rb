
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
        list_product
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
  def list_product
    PumpSelection::Scraper.scarp
    PumpSelection::Scraper.scrape_product
    PumpSelection::Scraper.display_product
  end
  def list_series(input)
    PumpSelection::Scraper.display_series(input)
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
