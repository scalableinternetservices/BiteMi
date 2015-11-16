class PublicFile < ActiveRecord::Base
	has_attached_file :file_clip
	validates_attachment_content_type :file_clip, :content_type => [/s?css/i,/sass/i, /jpe?g/i, /png/i, /gif/i]
end
