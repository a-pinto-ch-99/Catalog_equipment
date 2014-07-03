class CategoriesEquipment < ActiveRecord::Migration
  def change
    create_table :categories_equipment, :id => false do |t|
      t.belongs_to :equipment
      t.belongs_to :category
    end
  end
end
