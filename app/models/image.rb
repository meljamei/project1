# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ActiveRecord::Base
  has_many :users
  has_many :categories
end
