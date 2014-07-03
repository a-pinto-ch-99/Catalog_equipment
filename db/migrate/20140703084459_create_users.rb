class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :user_last_name
      t.text :user_first_name
      t.text :user_e_mail
      t.text :user_access_rights

      t.timestamps
    end
  end
end
