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

  def create()
    timeslot_id = params[:timeslot_id]
    weekday_id = params[:weekday_id]

    timeslot = Timeslot.find_by(id: timeslot_id)
    weekday = Weekday.find_by(id: weekday_id)
    user_id = current_user.id

    existing_reservartion = Reservation.find_by(timeslot_id: timeslot_id, weekday_id: weekday_id)

    if existing_reservartion
      render json: { error: 'Você já fez uma reserva para este horário e dia.' }, status: :unprocessable_entity
    else
      reservation = Reservation.new(
        user_id: user_id,
        timeslot_id: timeslot.id,
        weekday_id: weekday.id,
      )

      if reservation.save
        render json: { success: 'Reserva criada com sucesso!' }
      else
        render json: { error: reservation.errors.full_messages }, status: :unprocessable_entity
      end

    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    
    if reservation.delete
      render json: { success: 'Reserva excluída com sucesso!' }
    else
      render json: { error: 'Falha ao excluir a reserva.' }, status: :unprocessable_entity
    end
  end
  
end
