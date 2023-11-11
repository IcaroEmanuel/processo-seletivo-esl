class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :weekday
  belongs_to :timeslot
end
