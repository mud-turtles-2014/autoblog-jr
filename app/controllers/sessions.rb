get '/login' do
  redirect '/' if user_signed_in?
  erb :login
end

post '/login' do
  @editor = Editor.find_by(username: params[:username])

  if Editor.authenticate(params[:username], params[:password])
    session[:editor_id] = @editor.id
    redirect '/'
  else
    session[:errors] = "incorrect credentials"
    redirect '/'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end