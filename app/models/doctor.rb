class Doctor < ApplicationRecord
  has_many :patients  # optimizes query 
  has_many :consultations

  def presentation
    "##{license_number}: #{name}"
  end
end
