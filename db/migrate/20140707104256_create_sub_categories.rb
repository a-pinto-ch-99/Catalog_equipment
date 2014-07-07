class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.text :name
      t.integer :category_id

      t.timestamps
    end
  end
end
