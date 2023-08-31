class Rollercoaster < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :name, :location, :price, :description, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
