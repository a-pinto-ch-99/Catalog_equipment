json.array!(@users) do |user|
  json.extract! user, :id, :user_last_name, :user_first_name, :user_e_mail, :user_access_rights
  json.url user_url(user, format: :json)
end
