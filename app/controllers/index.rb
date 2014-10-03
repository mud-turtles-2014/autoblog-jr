get '/' do
	@posts = Post.all
	@photos = Photo.all
  erb :index
end