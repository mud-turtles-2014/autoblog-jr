def current_user
	@current_editor ||= Editor.find(session[:editor_id]) if session[:editor_id]
end

def user_signed_in?
	!current_user.nil?
end