module ListingsHelper
	def cache_key_for_all_listings
    	"listing-table-#{Listing.maximum(:updated_at)}"
  	end

	 def cache_key_for_each_listing(listing)
		"listing-#{listing.id}-#{listing.updated_at}"
	 end
end
