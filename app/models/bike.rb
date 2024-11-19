class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
end
