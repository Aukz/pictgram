class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true

  belongs_to :user
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
  has_many :stars
  has_many :comments
  has_many :comment_users, through: :comments, source: 'user'

  mount_uploader :image, ImageUploader

  def favorite_by?(user)
    favorites.where(user_id: user.id).exists?
  end


end
