require 'pry'

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

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor
    end
  end

  def patients
    #binding.pry
    appointments.collect do |people|
      people.patient
    end
  end
end
