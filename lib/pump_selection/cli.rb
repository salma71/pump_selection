class PumpSelection::CLI
  def call
    welcome
    puts "--------------------------------------"
    options
    # list_ranges
    end
  def welcome
    puts "Welcome to packopumps website"
    sleep (1)
    puts "Please select one of the options below to discover the website"
    puts "***************************************"
    sleep (1)
    puts "0 for product range"
    puts "______________________________"
    sleep (1)
    puts "1 for general industries pump"
    puts "______________________________"
    sleep (1)
    puts "2 for hygienic pumps"
    puts "______________________________"
    sleep (1)
    puts "3 for pharmaceutical pumps"
    puts "______________________________"
    sleep (1)
    puts "4 for mixing technology"
    puts "______________________________"
    sleep (1)
    puts "close to exit"
  end
  def options
    input = gets.strip.downcase
    if input == "0"
      puts "-------------------------------------"
      list_ranges
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
  def list_ranges
    @product_range = PumpSelection::Series.range
    range_of_pumps = @product_range.slice(0, 6)
    # that will return the first 5 items only in the div because there are
    #two nested divs without a class and i need only the first div
    range_of_pumps.each.with_index(1) do |item, i|
    puts "#{i}. #{item.name.strip}"
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
