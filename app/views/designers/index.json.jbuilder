json.array!(@designers) do |designer|
  json.extract! designer, :id, :name, :second_name, :photo, :details
  json.url designer_url(designer, format: :json)
end
