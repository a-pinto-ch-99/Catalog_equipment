json.array!(@categories) do |category|
  json.extract! category, :id, :cat_name, :cat_description
  json.url category_url(category, format: :json)
end
