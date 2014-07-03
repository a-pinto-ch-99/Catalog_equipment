class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :cat_name
      t.text :cat_description

      t.timestamps
    end
  end
end
