json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :eq_name, :eq_description, :eq_number
  json.url equipment_url(equipment, format: :json)
end
