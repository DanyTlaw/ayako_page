json.array!(@themes) do |theme|
  json.extract! theme, :id, :name, :size
  json.url theme_url(theme, format: :json)
end
