module RoomsHelper
  def reservation_exists?(weekday_id, timeslot_id)
    Reservation.exists?(weekday_id: weekday_id, timeslot_id: timeslot_id)
  end

  def find_user_by_reservation(timeslot_id, weekday_id)
    reservation = Reservation.find_by(timeslot_id: timeslot_id, weekday_id: weekday_id)
    if reservation
      user = User.find_by(id: reservation.user_id)

      user.name
    else
      "Nenhum usuário"
    end
  end
end
