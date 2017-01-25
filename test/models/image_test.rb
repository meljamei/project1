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

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
