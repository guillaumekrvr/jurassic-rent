class Animal < ApplicationRecord
  has_many :reviews, :bookings
  belongs_to :user
end
