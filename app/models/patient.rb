class Patient < ApplicationRecord
  #belongs_to :doctor # <- MANDATORY FIELD
  has_many :consultations #customary belongs_to before has_many

  validates :username,
    presence: true,
    length: { minimum: 4 }

  validates :age,
    presence: true,
    numericality: {greater_than: 0, less_than: 99}

  validates :parent, presence: true, unless: :older_than_20?

  def older_than_20?
    return unless age
    age >= 21
  end

  before_save :announce_save
  after_save :log_save

  def complain(doctor_name)
    "Hey, doctor #{doctor.name}, my head hurts"
  end

  private

  def announce_save
    puts "Hey, I'm saving patient #{username} here!"
  end

  def log_save
    puts "I just saved patient #{id}"
  end
end
