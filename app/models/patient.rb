class Patient < ApplicationRecord
  belongs_to :doctor
  has_many :consultations #customary belongs_to before has_many

  def complain
    "Hey, doctor #{doctor.name}, my head hurts"
  end
end
