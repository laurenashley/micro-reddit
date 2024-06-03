class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 6, maximum: 12 }, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :posts
  has_many :comments
end
