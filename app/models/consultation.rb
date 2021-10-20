class Consultation < ApplicationRecord
    belongs_to :doctor # indicates that method must link to db consult
    belongs_to :patient 

validates: :start_time, presence: true
validates: :end_time, presence: true

validates :valid_start_end_times?
validates :start_time_after_now?

def valid_start_end_times?
    start.time.before? end_time
end

def start_time_after_now?
    start_time.after? DateTime.now
end