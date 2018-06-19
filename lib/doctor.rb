class doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    song = Appointment.new(date, self, patient)
  end

  def appointments
    Patient.all.select do |appointments|
      appointments.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
