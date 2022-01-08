class Booking < ApplicationRecord
  belongs_to :animal
  belongs_to :user

  validates :start_date, :end_date, :price_booking, presence: true
  assignable_values_for :status, default: 'pending' do
    ['pending', 'reject', 'validate']
  end
end
