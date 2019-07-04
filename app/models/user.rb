class User < ApplicationRecord
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  validates :name,  presence: true, length: { maximum: 35 }
  validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,35}+\z/i}


  has_secure_password

  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  has_many :comments
  has_many :comments_topics, through: :comments, source: 'topic'
end
