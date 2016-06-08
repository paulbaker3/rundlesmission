json.array!(@myssions) do |myssion|
  json.extract! myssion, :id, :description, :risk_value, :location
  json.url myssion_url(myssion, format: :json)
end
