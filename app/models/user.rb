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
  has_many :active_relationships, class_name:  "Relationship", foreign_key: "follower_id", dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",foreign_key: "followed_id", dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower


  validates :email, :presence => true, :uniqueness => true, :length => {:minimum => 5}

  def already_likes?(image)
    # self.likes.find(:all, :condition => ['image_id = ?', image.id]).size > 0
    # self.likes.where(:all, :condition => ['image_id = ?', image.id]).size > 0

    puts "======================", self.id, image.id, self.likes.where('image_id = ?', image.id).inspect

    self.likes.where('image_id = ?', image.id).size > 0
  end

  def following?(other_user)
    relationships.find_by_followed_id(other_user.id)
  end

  def followed_users?(other_user)
    relationships.find_by_followed_id(other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by_followed_id(other_user.id).destroy
  end

end
