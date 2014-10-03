steve = Editor.create(first_name: "Steve", last_name: "Ono", email: "steveono@gmail.com")
james = Editor.create(first_name: "James", last_name: "Hunt", email: "jameshunt@mclaren.com")
niki = Editor.create(first_name: "Niki", last_name: "Lauda", email: "nikilauda@ferrari.com")

steve_post = steve.posts.create(title: "The 2015 Porsche Cayman GTS", content: "This is the content from Steve's blog post.")
james_post = james.posts.create(title: "The 2015 Porsche 911 GT3", content: "This is the content from James' blog post.")
niki_post = niki.posts.create(title: "The 2015 Porsche Turbo S", content: "This is the content from Niki's blog post.")

Photo.create(name: "porsche-cayman-gts", url: "http://www.netcarshow.com/porsche/2015-cayman_gts/800x600/wallpaper_04.htm", post_id: 1)
Photo.create(name: "porsche-911-gt3", url: "http://www.netcarshow.com/porsche/2014-911_gt3/800x600/wallpaper_01.htm", post_id: 2)
Photo.create(name: "porsche-turbo-s", url: "http://www.netcarshow.com/porsche/2014-911_turbo_s/800x600/wallpaper_02.htm", post_id: 3)