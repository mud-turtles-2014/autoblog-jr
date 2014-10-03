class Post < ActiveRecord::Base
	belongs_to :editor
	has_many :photos
end
