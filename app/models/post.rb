# app/models/post.rb

class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  has_one_attached :attachment
end
