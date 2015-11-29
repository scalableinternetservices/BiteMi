module ApplicationHelper

	def cache_key_for_each_user
		"navbar-user-#{current_user.id}"
	end

	def user_photo_url(user)
		if user.avatar.file?
			user.avatar.url
		else 
			"default_avator.png"
		end
	end

end

