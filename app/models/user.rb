class User < ApplicationRecord
  has_many :animals, :bookings

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A.*@.*\.com\z/ }
end
