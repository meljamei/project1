User.destroy_all
u1 = User.create  :avatar => "https://static.pexels.com/photos/36764/marguerite-daisy-beautiful-beauty.jpg", :name => "Luke", :email => 'textchimp@gmail.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :name => "Mel", :email => 'meljamei.info@gmail.com', :password => 'chicken', :password_confirmation => 'chicken', :admin => true


Image.destroy_all
a1 = Image.create :url => "http://buhsl.com/wp-content/uploads/2010/03/baterfly-2.jpg"
a2 = Image.create :url => "http://cbsnews3.cbsistatic.com/hub/i/r/2016/03/23/38e32f54-b910-4612-8852-be9e0fbdbf73/thumbnail/620x350/440a1273973991f75a0ac768f554e37c/cat-istock.jpg"
a3 = Image.create :url => "https://farm1.staticflickr.com/542/19074222720_ca5640fc18_b.jpg"


Category.destroy_all
c1 = Category.create :title => 'Flower'
c2 = Category.create :title => 'View'
c3 = Category.create :title => 'Ocean'



a1.categories << c1 << c3
a2.categories << c1 << c2 << c3
a3.categories << c3

#
# c1.images << a1 << a2 << a3
# c2.images << a3
# c3.images << a1 << a3

u1.images << a1 << a2 << a3
u2.images << a3
