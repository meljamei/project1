# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  latitude   :float
#  longitude  :float
#

class Image < ActiveRecord::Base
  has_many :likes
  belongs_to :user
  has_and_belongs_to_many :categories

  def like_count
    self.likes.count
  end

end
