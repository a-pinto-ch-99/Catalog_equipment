class Category < ActiveRecord::Base
  has_and_belongs_to_many :equipment
  has_many :sub_categories
end
