  class User < ActiveRecord::Base

    has_many :reviews
    has_many :breweries, through: :reviews

    def User.create_user
      user_info = []

           puts "Enter your name and we will get started:"
           user_info << STDIN.gets.chomp
           puts
           puts "HELLO!!!"
           puts
           puts "Enter your desired location(city):"
           user_info << STDIN.gets.chomp

          $current_user = User.new(name: user_info[0], city: user_info[1])
          $current_user.save
    end

   

  end
