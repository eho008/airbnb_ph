class Review < ApplicationRecord
  belongs_to :booking
  validates :body, presence: true
  validates :rating, numericality: { in: 1..5 }
end
