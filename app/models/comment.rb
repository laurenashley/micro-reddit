class Comment < ApplicationRecord
  validates :commenter, presence: true
  validates :body, presence: true, length: { minimum: 1, maximum: 350 }
  validates :user_id, presence: true
  validates :post_id, presence: true

  belongs_to :user
  belongs_to :post
end
