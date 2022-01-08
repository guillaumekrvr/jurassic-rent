class Booking < ApplicationRecord
  belongs_to :animal
  belongs_to :user

  validates :status, :start_date, :end_date, :price_booking, presence: true
end
