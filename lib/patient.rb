class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    song = Appointment.new(doctor, self, date)
  end

  def doctors
    Appointment.all.select do |doctors|
      doctor.patient == self
    end
  end

end
