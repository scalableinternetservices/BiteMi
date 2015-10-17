json.array!(@orders) do |order|
  json.extract! order, :id, :start_time, :end_time, :status, :price
  json.url order_url(order, format: :json)
end
