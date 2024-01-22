class User < ApplicationRecord
  has_many :posts, -> { order(id: :desc) }
  store :address, coder: JSON

  attribute :passport, Passport.to_type

  def address = @address ||= Address.new(super)
end
