class Patient < ApplicationRecord
  belongs_to :doctor

  def complain
    "Hey, doctor #{doctor.name}, my head hurts"
  end
end
