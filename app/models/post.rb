class Post < ActiveRecord::Base
	belongs_to :user
	has_attached_file :photo, :styles => { :medium => ["570", :png] }

end
