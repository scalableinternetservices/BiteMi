json.array!(@listings) do |listing|
  json.extract! listing, :id, :brand, :model, :price, :condition, :start_time, :end_time, :description
  json.url listing_url(listing, format: :json)
end
