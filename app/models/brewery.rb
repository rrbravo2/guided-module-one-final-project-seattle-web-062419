require 'rest-client'
require 'pry'
require 'json'
  class Brewery < ActiveRecord::Base

    has_many :reviews
    has_many :users, through: :reviews

    @@breweries = []

    def Brewery.get_brewery_info
      breweries = []
      url = "https://api.openbrewerydb.org/breweries?by_city=seattle"
      response = RestClient.get(url)
      json = JSON.parse(response)
      binding.pry
      breweries << json['breweries']
      breweries.flatten!
      @@breweries = breweries
    end

    def Brewery.get_brewery
      i=0
      for each in @@breweries
        brewery_data = []
        brewery_data << @@breweries[i]["brewery"]["name"]
        brewery_data << @@breweries[i]["brewery"]["city"]
        brewery_data << @@breweries[i]["brewery"]["brewery_type"]
        Brewery.create(name: brewery_data[0], city: brewery_data[1], brewery_type: brewery_data[2])
        i+=1
      end
    end

    def Brewery.join_users
        Brewery.all.each do |brewery|
        Review.create(user_id: $current_user.id, brewery_id: brewery.id)
      end
    end




    # def get_category(arg)
    #   $city.each do |hash|
    #       if hash["brewery_type"] == arg
    #         puts hash["name"]
    #     end
    #   end
    # end
  end
