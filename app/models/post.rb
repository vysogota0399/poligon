class Post < ApplicationRecord
  validates_with Post::DraftValidator
  validates_with Post::PublishingValidator

  enum state: %w[in_progress published]
  has_many :comments, -> { order(id: :desc) }
  belongs_to :user

  alias_method :author, :user
end
