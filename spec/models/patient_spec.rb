require 'rails_helper'

RSpec.describe Patient, type: :model do

  describe 'Patient must have a name' do
    it 'fails if no username is provided' do
      patient = Patient.new(doctor_id: 1, age: 24)

      expect(patient).not_to be_valid
      expect(patient.errors.full_messages).to include("Username can't be blank")
    end

    it 'fails if username is shorter than 4' do
      patient = Patient.new(age: 27, username: 'Jax')

      expect(patient).not_to be_valid
      expect(patient.errors.full_messages).to include("Username is too short (minimum is 4 characters)")
    end

    it 'passes if username is present and larger than 4 chars' do
      patient = Patient.new(age: 26, username: 'Billy the kid')

      expect(patient).to be_valid
      expect(patient.errors).to be_empty
    end
  end
end
