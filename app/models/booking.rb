class Booking < ApplicationRecord
  belongs_to :rollercoaster
  belongs_to :user
end
