module ListingsHelper
	def cache_key_for_all_listings
  		"listing-table-#{Listing.maximum(:updated_at)}"
  	end

	def cache_key_for_each_listing_card(listing)
		"listing-card-#{listing.id}-#{listing.updated_at}"
	end

	def cache_key_for_each_listing(listing)
		"listing-#{listing.id}-#{listing.updated_at}"
	end

	def cache_key_for_each_listing_with_comment(listing, root)
		"listing-#{listing.id}-#{listing.updated_at}-#{root.updated_at}"
	end

	def cache_key_for_each_listing_photo(photo)
		"listing-photo-#{photo.id}-#{photo.updated_at}"
	end

	def cache_key_for_each_comment_tree(listing, root)
		"listing-comment-#{listing.id}-#{root.updated_at}"
	end

	def listing_cover_url(listing)
  	if listing.cover_photo.file?
  		listing.cover_photo.url
  	else 
  		"image_not_found.png"
  	end
	end

end
