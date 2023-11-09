class RoomsController < ApplicationController
  def index
    @reservations = Reservation.all
    @weekdays = Weekday.all
    @timeslots = Timeslot.all
  end

  def details
    timeslot_id = params[:timeslot_id]
    weekday_id = params[:weekday_id]

    timeslot = Timeslot.find_by(id: timeslot_id)
    weekday = Weekday.find_by(id: weekday_id)

    render json: {
      start_time: timeslot.start_time.strftime('%H:%M'),
      weekday: weekday.name,
      user: current_user.name,
    }
  end
end
