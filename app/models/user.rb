# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  avatar          :text
#  admin           :boolean          default("false")
#  name            :text
#  username        :text
#  bio             :text
#

class User < ActiveRecord::Base
  has_many :images
  has_many :categories, :through => :images
  has_many :likes
  has_secure_password
  validates :email, :presence => true, :uniqueness => true, :length => {:minimum => 5}

  def already_likes?(image)
    # self.likes.find(:all, :condition => ['image_id = ?', image.id]).size > 0
    # self.likes.where(:all, :condition => ['image_id = ?', image.id]).size > 0

    puts "======================", self.id, image.id, self.likes.where('image_id = ?', image.id).inspect

    self.likes.where('image_id = ?', image.id).size > 0 
  end

end
