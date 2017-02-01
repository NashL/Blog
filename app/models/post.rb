class Post < ApplicationRecord
  belongs_to :author
  validates :content, length: {minimum: 20}
  validates :slug , format: { with: /\A[a-z0-9]+-*[a-z0-9]+\z/, message: '- Please enter only alphanumeric and "-" characters'}
end
