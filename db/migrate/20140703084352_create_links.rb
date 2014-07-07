class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :link_name
      t.text :link_url

      t.timestamps
    end
  end
end
