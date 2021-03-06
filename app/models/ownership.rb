# == Schema Information
#
# Table name: ownerships
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  user_id    :integer
#  item_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ownership < ApplicationRecord
  belongs_to :user
  belongs_to :item
end
