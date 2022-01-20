class Booking < ApplicationRecord
  belongs_to :animal
  belongs_to :user

  validates :start_date, :end_date, presence: true
  # assignable_values_for :status, default: 'pending' do
  # end
end
