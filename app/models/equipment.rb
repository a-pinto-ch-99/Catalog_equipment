class Equipment < ActiveRecord::Base
  # reliationships between models
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :links

  # allows project page to add items via checkboxes
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :links
end
