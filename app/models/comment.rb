# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  name       :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#

class Comment < ApplicationRecord
	belongs_to :post
end

