class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor
    end
  end

  def patients
    appointments.collect do |patient|
      patient.appointments
    end
  end
end
