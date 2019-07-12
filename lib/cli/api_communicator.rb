
 require 'rest-client'
 require 'pry'
 require 'json'


class CommandLineInterface

  def greet
    puts
    puts                "BINDER"
    puts
    puts "Welcome to Binder, your brewery finder application!"
    puts "We can help you find all of the finest breweries in your area."
    puts
    puts
  end

  def gets_user
      User.create_user
  end

  


  def gets_user_input
     puts "Now select category(micro, regional, brewpub):"
     str4 = gets.chomp
     puts
     get_category(str4)
     puts
     puts "Thank you for visiting! Let us know how your brewery experience was:"
     str6 = gets.chomp
     puts
  end
#
  def get_city(arg)
    arg.each do |brewery|
      puts brewery["name"]
    end
  end

  def get_category(arg)
    $city.each do |hash|
        if hash["brewery_type"] == arg
          puts hash["name"]
      end
    end
  end
#



end
  Review.destroy_all


r1 = Review.create(rating: "I loved it!")
r2 = Review.create(rating: "I hated it!")
r3 = Review.create(rating: "It was better than i expected.")
r4 = Review.create(rating: "It was not as good as i thought it was going to be.")
r5 = Review.create(rating: "It was ok.")
