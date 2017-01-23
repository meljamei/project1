User.destroy_all
u1 = User.create :email => 'ctextchimp@gmail.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :email => 'mel@ga.com', :password => 'chicken', :password_confirmation => 'chicken', :admin


Image.destroy_all
a1 = Image.create :url => "http://filmurray.com/400/400"
a2 = Image.create :url => "http://filmurray.com/400/400"
a3 = Image.create :url => "http://filmurray.com/400/400"


Category.destroy_all
c1 = Category.create :name => 'Flower'
c2 = Category.create :name => 'View'
c3 = Category.create :name => 'Ocean'



a1.categories << c1 << c3
a2.categories << c1 << c2 << c3
a3.categories << c3


c1.images << a1 << a2 << a3
c2.images << a3
c3.images << a1 << a3

u1.categories << c1 << c3
u2.categories << c2 << c1
