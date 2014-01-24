json.array!(@how_tos) do |how_to|
  json.extract! how_to, :id, :title, :description
  json.url how_to_url(how_to, format: :json)
end
