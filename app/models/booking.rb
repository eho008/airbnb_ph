class Booking < ApplicationRecord
  belongs_to :rollercoaster
  belongs_to :user
  has_many :reviews
  validates :date_end, comparison: { greater_than: :date_begin }
end
