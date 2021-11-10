class Consultation < ApplicationRecord
    belongs_to :doctor # indicates that method must link to db consult
    belongs_to :patient 

    validates :start_time, :end_time, presence: true

    validate :valid_start_end_times?
    validate :start_time_after_now?

    def valid_start_end_times?
      return unless start_time && end_time
      return if start_time.before? end_time 
      errors[:start_time] << 'start_time is not before end_time'
    end

    def start_time_after_now?
      return unless start_time && end_time
      return if start_time.after? DateTime.now
      errors[:start_time] << "start_time is not before current time"
    end
end