class EquipmentSubCategories < ActiveRecord::Migration
  def change
    create_table :equipment_sub_categories, :id => false do |t|
      t.belongs_to :equipment
      t.belongs_to :sub_category
    end
  end
end
