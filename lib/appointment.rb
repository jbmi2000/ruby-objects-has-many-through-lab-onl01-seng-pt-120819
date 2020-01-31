class Appointment
  attr_accessor :date, :patient, :Doctor

  @@all = []

  def initialize(date, patient, doctor)
    @name = name
    @date = date.to_str
    @doctor = doctor
    @@all << self

  end

  def self.all
    @@all
  end

end
