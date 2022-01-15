class Animal < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings
  has_many_attached :photos
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :specie, :address, :price_per_day, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :age, numericality: { only_integer: true }
end
