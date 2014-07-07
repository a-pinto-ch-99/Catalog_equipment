class EquipmentLinks < ActiveRecord::Migration
  def change
    create_table :equipment_links, :id => false do |t|
      t.belongs_to :equipment
      t.belongs_to :link
    end
  end
end
