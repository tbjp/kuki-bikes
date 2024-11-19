class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  validates :jarod, presence: false
  validates :toby, presence: false
  validates :bartek, presence: false
  validates :start_date, presence: true
  validates :end_date, presence: true
end
