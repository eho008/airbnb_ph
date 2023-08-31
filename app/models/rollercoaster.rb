class Rollercoaster < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :name, :location, :price, :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_info,
  against: [ :name, :location, :price, :description ],
  using: {
    tsearch: { prefix: true }
  }
end
