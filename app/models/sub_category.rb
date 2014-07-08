class SubCategory < ActiveRecord::Base
  validates :name, :category_id, presence: true
  
  belongs_to :category
  has_and_belongs_to_many :equipment
end
