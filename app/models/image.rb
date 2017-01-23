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
  belongs_to :users
  has_and_belongs_to_many :categories
end
