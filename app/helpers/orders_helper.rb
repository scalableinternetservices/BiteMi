module OrdersHelper
	def cache_key_for_each_order_row(order)
		"order-row-#{order.id}-#{order.updated_at}"
	end

	def cache_key_for_index_order(orders)
		"order_index-#{orders.maximum(:updated_at)}"
	end

end
