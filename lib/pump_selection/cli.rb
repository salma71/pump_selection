class PumpSelection::CLI
  def call
    welcome
    options
  end
  def welcome
    puts "Welcome to packopumps website"
    sleep (1)
    puts "Please select one of the options below to discover our website"
    puts "0 for product range"
    puts "1 for general industries pump"
    puts "2 for hygienic pumps"
    puts "3 for pharmaceutical pumps"
    puts "4 for mixing technology"
    puts "close to exit"
  end
  def options
    input = gets.strip.downcase
    if input == "0"
      puts "list the range of stainless steel pumps....."
    elsif input == "1"
      puts "more info about general industries pump"
    elsif input == "2"
      puts "more info about hygienic pumps"
    elsif input == "3"
      puts "more info about pharmaceutical pumps"
    elsif input == "4"
      puts "more info about mixing technology"
    elsif input == "close"
      close_app
    else
      puts "Not sure what you want to do please select one of the options"
      #write a method that list all the options again
    end
  end

  # def list_pumps
  #   # puts "product range"
  #   @pumps = PumpSelection::Series.model
  # end
end
private
def close_app
  puts "Exiting the application..."
  sleep (1)
  puts "Thank you"
  sleep (1)
  exit
end
