# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  title       :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cover_image :text
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
