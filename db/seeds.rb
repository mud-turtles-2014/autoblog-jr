steve = Editor.create(first_name: "Steve", last_name: "Ono", username: "steveono@gmail.com", password: "password")
james = Editor.create(first_name: "James", last_name: "Hunt", username: "jameshunt@mclaren.com", password: "password")
niki = Editor.create(first_name: "Niki", last_name: "Lauda", username: "nikilauda@ferrari.com", password: "password")

Post.create(title: "The 2015 Porsche Cayman GTS", content: "Featuring light exterior freshening, the new fascia wears a tweaked grille and slimmer, more expressive headlights. The rear end sees more substantial changes, with a freshened rear bumper that features rectangular exhaust outlets and more dramatically redone taillights.", editor_id: 1)
Post.create(title: "The 2015 Porsche 911 GT3", content: "Featuring light exterior freshening, the new fascia wears a tweaked grille and slimmer, more expressive headlights. The rear end sees more substantial changes, with a freshened rear bumper that features rectangular exhaust outlets and more dramatically redone taillights.", editor_id: 2)
Post.create(title: "The 2015 Porsche Turbo S", content: "Featuring light exterior freshening, the new fascia wears a tweaked grille and slimmer, more expressive headlights. The rear end sees more substantial changes, with a freshened rear bumper that features rectangular exhaust outlets and more dramatically redone taillights.", editor_id: 3)

Photo.create(name: "porsche-cayman-gts", url: "http://img2.netcarshow.com/Porsche-Cayman_GTS_2015_1024x768_wallpaper_05.jpg", post_id: 1)
Photo.create(name: "porsche-911-gt3", url: "http://img2.netcarshow.com/Porsche-911_GT3_2014_1024x768_wallpaper_01.jpg", post_id: 2)
Photo.create(name: "porsche-turbo-s", url: "http://img2.netcarshow.com/Porsche-911_Turbo_S_2014_1024x768_wallpaper_02.jpg", post_id: 3)

Comment.create(text: "This is a test comment", post_id: 1, editor_id: 1)