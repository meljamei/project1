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

class Category < ActiveRecord::Base
  has_many :users
  has_and_belongs_to_many :images

  def self.search(search)
  if search
    find(:all, :conditions => ['category LIKE ?', "%#{search}%"])
  else
    all
  end
end
end
