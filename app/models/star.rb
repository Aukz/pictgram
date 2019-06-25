class Star < ApplicationRecord
  validates :topic_id, presence: true


  belongs_to :topic
end
