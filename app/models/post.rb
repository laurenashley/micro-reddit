class Post < ApplicationRecord
  validates :url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }
  validates :user_id, presence: true

  belongs_to :user
  has_many :comments
end
