# == Schema Information
#
# Table name: meets
#
#  id         :integer          not null, primary key
#  name       :string
#  meeting    :date
#  subject    :text
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Meet < ApplicationRecord
end
