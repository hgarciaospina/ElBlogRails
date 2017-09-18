# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  status     :boolean
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_and_belongs_to_many  :categories

	scope :published, -> {where status:true}
	scope :draft, -> {where status:false}
  scope :recent, -> {where created_at: 1.day.ago..Time.now}
	scope :search, ->(word) {where("title LIKE ?", "%#{word}%")}

end
