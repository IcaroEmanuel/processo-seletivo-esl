class RoomsController < ApplicationController
  def index
    @reservations = Reservation.all
    @weekdays = Weekday.all
    @timeslots = Timeslot.all
  end
end
