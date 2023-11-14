# Salas de reunião
rooms = [
  { name: 'Sala 1' },
]

# Dias da semana
weekdays = [
  { name: 'Segunda-feira' },
  { name: 'Terça-feira' },
  { name: 'Quarta-feira' },
  { name: 'Quinta-feira' },
  { name: 'Sexta-feira' }
]

# Horários disponíveis
timeslots = [
  { start_time: '08:00', end_time: '08:59' },
  { start_time: '09:00', end_time: '09:59' },
  { start_time: '10:00', end_time: '10:59' },
  { start_time: '11:00', end_time: '11:59' },
  { start_time: '12:00', end_time: '12:59' },
  { start_time: '13:00', end_time: '13:59' },
  { start_time: '14:00', end_time: '14:59' },
  { start_time: '15:00', end_time: '15:59' },
  { start_time: '16:00', end_time: '16:59' },
  { start_time: '17:00', end_time: '17:59' },
]

Room.create(rooms)

Weekday.create(weekdays)

Timeslot.create(timeslots)

