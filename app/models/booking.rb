class Booking < ApplicationRecord
  belongs_to :rollercoaster
  belongs_to :user
  has_many :reviews
  validates :date_begin, comparison: { greater_than: :date_end }
end
