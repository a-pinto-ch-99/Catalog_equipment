class Equipment < ActiveRecord::Base
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories

  has_and_belongs_to_many :links
  accepts_nested_attributes_for :links
  
  has_and_belongs_to_many :sub_categories
  accepts_nested_attributes_for :sub_categories
end
