# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  password   :string
#  image      :string
#  content    :string
#

class User < ApplicationRecord
  validates :name, {presence: true}
  validates :content, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  mount_uploader :image, ImageUploader

  def posts
    return Post.where(user_id: self.id)
  end
end
