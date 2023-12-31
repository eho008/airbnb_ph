class Rollercoaster < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  has_many_attached :photos
  validates :name, :location, :price, :description, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_info,
                  against: %i[name location price description],
                  using: {
                    tsearch: { prefix: true }
                  }
end
