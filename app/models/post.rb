class Post < ActiveRecord::Base
	belongs_to :editor
	has_many :photos
	has_many :comments
end
