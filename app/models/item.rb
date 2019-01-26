# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  name       :string(255)
#  url        :string(255)
#  image_url  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ApplicationRecord
  validates :code, presence: true, length: { maximum: 255}
  validates :name, presence: true, length: { maximum: 255}
  validates :url, presence: true, length: { maximum: 255}
  validates :image_url, presence: true, length: { maximum: 255}
  
  has_many :ownerships
  has_many :users, through: :ownerships
  has_many :wants
  has_many :want_users, through: :wants, source: :user
  has_many :haves, class_name: 'Have'
  has_many :have_users, through: :haves, source: :user 
end
