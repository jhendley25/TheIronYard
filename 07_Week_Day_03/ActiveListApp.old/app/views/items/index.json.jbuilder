json.array!(@items) do |item|
  json.extract! item, :id, :item_name, :urgency_level, :location_id
  json.url item_url(item, format: :json)
end
