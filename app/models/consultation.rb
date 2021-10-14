class Consultation < ApplicationRecord
    belongs_to :doctor # indicates that method must link to db consult
    belongs_to :patient 
end
