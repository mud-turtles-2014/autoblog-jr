get '/' do
	@posts = Post.all[0..2]
	@photos = Photo.all
  	erb :index
end

post '/' do
	p params
	@post = Post.find_by(id: params["count"].to_i)
	@photos = Photo.all
	erb :'_post_more', layout: false
end


