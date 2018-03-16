
class PumpSelection::CLI
#   def call
#     make_a_search = true
#     puts "Welcome to packo pumps"
#     while make_a_search == true
#       query_website_data
#       menu
#       make_a_search = new_request?
#     end
#   end
#   def menu
#    puts "The pumps available are:"
#    @query.display_pumps_name
#    puts "What pump do you want more info on?"
#    input = get_user_input
#     if input.to_i > 0
#      @query.display_more_info(input)
#     elsif input == "exit"
#      return
#     else
#      puts "Selection unclear - please type the number of the pair you want to check or exit."
#      menu
#     end
#   end
#
#   def query_website_data
#     @query = PumpSelection::Scraper.new
#   end
#   def new_request?
#     puts "Do you want to check another pump? (Y/N)"
#     user_input = get_user_input.downcase
#     case user_input
#     when "y"
#       true
#     when "n"
#       false
#     else puts "selection_unclear - please type Y or N"
#       new_request?
#     end
#   end
#   def get_user_input
#     gets.to_s.strip
#   end
# end
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
        puts "-------------------------------------"
          options
          puts " "
      when "1"
        puts "For industrial pumps series"
          list_series(input)
          # binding.pry
        options
        puts "-------------------------------------"
        when "2"
        puts "For hygienic pumps series"
        list_series(input)
        options
        puts "-------------------------------------"
        when "3"
        puts "For pharmaceutical pumps series"
        list_series(input)
        options
        puts "-------------------------------------"
        when "4"
        puts "For mixing technology solutions"
        list_series(input)
        options
        puts "-------------------------------------"
        when "close"
        close_app
        puts "Not sure what you want to do please select one of the options"
        #write a method that list all the options again
      end
  end
  def list_product
    PumpSelection::Series.scarp
    PumpSelection::Series.scrape_product
    PumpSelection::Series.display_product
  end
  def list_series(input)
    PumpSelection::Series.scarp
    PumpSelection::Series.scrape_product
    PumpSelection::Series.display_series(input)
    # binding.pry
  end
  private
  def close_app
    puts "Exiting the application...".red
    sleep (1)
    puts "Thank you".green
    sleep (1)
    exit
  end
end
