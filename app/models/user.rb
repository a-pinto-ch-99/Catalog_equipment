class User < ActiveRecord::Base
  validates :user_last_name, :user_first_name, :user_e_mail, :user_access_rights, presence: true
  
end
