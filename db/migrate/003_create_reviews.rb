 class CreateReviews < ActiveRecord::Migration

   def change
     create_table :reviews do |t|
       t.text :description
       t.text :rating
       t.integer :user_id
       t.integer :brewery_id
     end
   end


 end
