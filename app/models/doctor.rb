class Doctor < ApplicationRecord
  has_many :patients  # optimizes query 
  has_many :consultations

  validates :name, presence: true, format: {with: /[[:alnum:]]/}
  validates :license_number, uniqueness: true

  def presentation
    "##{license_number}: #{name}"
  end
end
