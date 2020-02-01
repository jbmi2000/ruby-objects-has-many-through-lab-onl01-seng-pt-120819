class Appointment
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    # @name = name
    @date = date
    @doctor = doctor
    @patient  = patient
    @@all << self

  end

  def self.all
    @@all
  end

  # def patient
  #   Patient.all.select do |patients|
  #     patients.patient == self
  #   end
  # end

end
