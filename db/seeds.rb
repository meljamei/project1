User.destroy_all
u1 = User.create  :avatar => "https://static.pexels.com/photos/36764/marguerite-daisy-beautiful-beauty.jpg", :name => "Luke", :email => 'textchimp@gmail.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :avatar => "https://static.pexels.com/photos/60224/pexels-photo-60224.jpeg", :name => "Mel", :email => 'meljamei.info@gmail.com', :password => 'chicken', :password_confirmation => 'chicken', :admin => true


Image.destroy_all
a1 = Image.create :url => "http://buhsl.com/wp-content/uploads/2010/03/baterfly-2.jpg"
a2 = Image.create :url => "http://cbsnews3.cbsistatic.com/hub/i/r/2016/03/23/38e32f54-b910-4612-8852-be9e0fbdbf73/thumbnail/620x350/440a1273973991f75a0ac768f554e37c/cat-istock.jpg"
a3 = Image.create :url => "https://farm1.staticflickr.com/542/19074222720_ca5640fc18_b.jpg"
a4 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a5 = Image.create :url => "https://static.pexels.com/photos/8923/pexels-photo.jpg"
a6 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a7 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a8 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a9 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a10 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a11 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a12 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a13 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a14 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a15 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a16 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a17 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a18 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a19 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"
a20 = Image.create :url => "https://static.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg"


Category.destroy_all
c1 = Category.create :title => 'Flower', :cover_image => 'https://static.pexels.com/photos/122734/pexels-photo-122734.jpeg'
c2 = Category.create :title => 'Cat', :cover_image => 'https://static.pexels.com/photos/22346/pexels-photo.jpg'
c3 = Category.create :title => 'Ocean', :cover_image =>'https://static.pexels.com/photos/35007/pexels-photo.jpg'
c4 = Category.create :title => 'Music', :cover_image => 'https://static.pexels.com/photos/111287/pexels-photo-111287.jpeg'
c5 = Category.create :title => 'Desert', :cover_image => "https://www.sciencenews.org/sites/default/files/main/articles/ts_7963972876_46c3b7b651_o_free.jpg"
c6 = Category.create :title => 'Food', :cover_image => 'https://static.pexels.com/photos/48726/pexels-photo-48726.jpeg'
c7 = Category.create :title => 'Car', :cover_image => 'https://static.pexels.com/photos/173286/pexels-photo-173286.jpeg'
c8 = Category.create :title => 'Dog', :cover_image => 'https://static.pexels.com/photos/139519/pexels-photo-139519.jpeg'
c9 = Category.create :title => 'Portrait', :cover_image => 'http://www.stockvault.net/blog/wp-content/uploads/2013/11/Portrait-8.jpg'





a1.categories << c1 << c3
a2.categories << c1 << c2 << c3
a3.categories << c3 << c5 << c4



u1.images << a10 << a11 << a12 << a13 << a14 << a15 << a16 << a17 << a18 << a19 <<a20
u2.images << a3 << a1 << a4 << a5 << a6 << a7 << a8 << a9 << a2
