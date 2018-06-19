class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    new_app = Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select {|i| i.patient == self}
  end

  def doctors
    Doctor.all.select {|i| i.patient == self}
  end

end
