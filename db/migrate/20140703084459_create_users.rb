class CreateUsers < ActiveRecord::Migration
 def change
 create_table :users do |t|
 t.text :user_last_name
 t.text :user_first_name

 end
 end
end