class Equipment < ActiveRecord::Base
  validates :eq_name, :eq_description, :eq_number, presence: true, uniqueness: {case_sensitive: false}
  
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :categories

  has_and_belongs_to_many :links
  accepts_nested_attributes_for :links
  
  has_and_belongs_to_many :sub_categories
  accepts_nested_attributes_for :sub_categories
  
  def self.search(search)
    if search
      self.includes(:categories, :sub_categories, :links).where("lower(eq_name) LIKE ? OR lower(eq_description) LIKE ? OR lower(eq_number) LIKE ? OR lower(categories.cat_name) LIKE ? OR lower(sub_categories.name) LIKE ? OR lower(links.link_name) LIKE ?", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%").references(:categories, :sub_categories, :links)
    else
      self.all
    end
  end
end
