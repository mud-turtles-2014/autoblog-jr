class Editor < ActiveRecord::Base

	has_secure_password
	has_many :posts

	def self.authenticate(username, password)
	    editor = Editor.find_by(username: username)

	    if editor.authenticate(password)
	      editor
	    else
	      nil
	    end

  end
end
