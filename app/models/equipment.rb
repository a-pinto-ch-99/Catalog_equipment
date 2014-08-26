class Equipment < ActiveRecord::Base
  validates :eq_name, :eq_description, :eq_number, presence: true, uniqueness: {case_sensitive: false}
  
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories
  
  has_and_belongs_to_many :sub_categories
  accepts_nested_attributes_for :sub_categories
  
end
