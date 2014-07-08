class Category < ActiveRecord::Base
  validates :cat_name, :cat_description, presence: true
  
  has_and_belongs_to_many :equipment
  has_many :sub_categories
end
