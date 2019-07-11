 class CreateBreweries < ActiveRecord::Migration

   def change
     create_table :breweries do |t|
       t.string :name
       t.text :brewery_type
       t.text :rating
       t.string :city
       t.string :state
       t.integer :postal_code
       t.string :country
       t.decimal :longitude
       t.decimal :latitude
       t.text :website_url
     end
   end



 end
