class Rollercoaster < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  has_many_attached :photos
  validates :name, :location, :price, :description, presence: true
end
