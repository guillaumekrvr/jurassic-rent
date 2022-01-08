class Animal < ApplicationRecord
  has_many :reviews
  has_many :bookings
  belongs_to :user

  validates :name, :species, :address, :city, :price_per_day, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :age, numericality: { only_integer: true }
end
