class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :likeable
  has_many :comments, as: :commentable
  validates :body, presence: true, length: { minimum: 2, maximum: 50 }
end
