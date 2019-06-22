# == Schema Information
#
# Table name: tag_posts
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  tag_id     :integer
#  deleted_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TagPost < ApplicationRecord
  belongs_to :tag
  belongs_to :post
end
