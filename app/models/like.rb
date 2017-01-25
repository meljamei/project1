# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  image_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Like < ActiveRecord::Base
belongs_to :user
belongs_to :image

# validate :user_does_not_already_like_post

def user_does_not_already_like_image
  errors.add(:user, "You can only like a post once.") if user.already_likes?(image)
end
end
