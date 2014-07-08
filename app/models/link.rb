class Link < ActiveRecord::Base
  validates :link_name, :link_url, presence: true
  
  has_and_belongs_to_many :equipment
end
