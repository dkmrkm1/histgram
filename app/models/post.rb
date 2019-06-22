# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string
#  slug       :string
#  user_id    :integer
#

class Post < ApplicationRecord
  has_many :tag_posts
  has_many :tags, through: :tag_posts

  before_create :set_create_slug

  validates :content, {presence: true}
  validates :user_id, {presence: true}
  mount_uploader :image, ImageUploader

  def user
    return User.find_by(id: self.user_id)
  end
  
  def to_param
    slug
  end

  private
  def set_create_slug
    loop do
      self.slug = SecureRandom.alphanumeric(8)
      break unless Post.where(slug: slug).exists?
    end
  end
end
