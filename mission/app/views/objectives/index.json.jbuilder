json.array!(@objectives) do |objective|
  json.extract! objective, :id, :target, :bounty, :myssion_id
  json.url objective_url(objective, format: :json)
end
