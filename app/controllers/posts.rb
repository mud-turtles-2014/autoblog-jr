get '/posts/new_post' do
	erb :'new_post'
end

get '/posts/:id' do
	@post = Post.find_by(id: params[:id])
	@photo = Photo.where(post_id: @post.id)
	@comments = Comment.all
	erb :posts
end

post '/posts/:id' do
	if request.xhr?
		@comment = Comment.create(editor_id: session[:editor_id], post_id: params[:id], text: params[:comment_text])
		erb :_comment, layout: false
	end
end

post '/' do
	new_post = current_user.posts.create(title: params[:title_text], content: params[:content_text])
	Photo.create(url: params[:img_url], post_id: new_post.id)
	@posts = Post.all
	@photos = Photo.all
  redirect '/'
end

















