class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true

  belongs_to :user
  has_many :favorites
  has_many :favorite_user, through: :favorites, source: 'user'

  mount_uploader :image, ImageUploader
end
