class Flat < ApplicationRecord
  belongs_to :user
  validates :name, :location, :price_per_night, :description, :property_type, presence: true
end
