json.array!(@links) do |link|
  json.extract! link, :id, :link_name, :link_url
  json.url link_url(link, format: :json)
end
