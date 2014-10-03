get '/posts/new_post' do
	erb :'new_post'
end

post '/' do
	new_post = current_user.posts.create(title: params[:title_text], content: params[:content_text])
	Photo.create(url: params[:img_url], post_id: new_post.id)
	@posts = Post.all
	@photos = Photo.all
  redirect '/'
end