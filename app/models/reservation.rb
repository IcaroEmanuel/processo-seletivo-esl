class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :weekday
  belongs_to :timeslot
end
