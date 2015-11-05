module ApplicationHelper

  def user_photo_url(user)
  	if user.avatar.file?
  		user.avatar.url
  	else 
  		"default_avator.png"
  	end
	end

end

