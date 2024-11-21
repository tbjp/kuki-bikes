class Bike < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  pg_search_scope :location_search,
    against: :location,
    using: {
      tsearch: { prefix: true } # Doesn't have to match whole query
    }
end
