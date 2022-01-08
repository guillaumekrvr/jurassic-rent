class User < ApplicationRecord
  has_many :animals, :bookings
end
