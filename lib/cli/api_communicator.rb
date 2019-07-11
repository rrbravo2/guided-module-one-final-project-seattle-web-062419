
 require 'rest-client'
 require 'pry'
 require 'json'


 response_string = RestClient.get("https://api.openbrewerydb.org/breweries")
 $response_hash = JSON.parse(response_string)

class CommandLineInterface

  def greet
    puts
    puts "Welcome to Binder, your brewery finder application!"
    puts "We can help you find all of the finest breweries in your area."
    puts
    puts
  end

  def gets_user_input
    puts "Enter your name and we will get started:"
     str = gets.chomp
     puts
     puts "HELLO!!!"
     puts
     puts "Enter your desired location(city):"
     str1 = gets.chomp
     info = RestClient.get("https://api.openbrewerydb.org/breweries?by_city=#{str1}")
     city = JSON.parse(info)
     brewery_type = JSON.parse(info)
     puts
     get_city(city)
     puts
     # str3 = gets.chomp
     puts
     puts "Now select category(micro, regional, brew_pub, large, planning, bar, contract, properties):"
     str4 = gets.chomp
     puts
     # binding.pry
     get_category(brewery_type)

  end

  def get_city(city)
    city.each do |brewery|
      puts brewery["name"]
    end
  end

  def get_category(brewery_type)
    breweries = brewery_type.select do |brewery|
     brewery_type == brewery["brewery_type"]
   end
   puts breweries
  end









  # def fin
  #   $response_hash.each do |hash|
  #     hash.each do
  #     if hash == "micro"
  #       puts $response_hash["name"]
  #     end
  #   end
  # end





# binding.pry


  def find_reviews(brewery)
    brewery.reviews
  end


  def run
    greet
    input = gets_user_input
    find_brewery(input)
    # binding.pry
  end

end
