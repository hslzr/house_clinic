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

  describe 'Patient age' do
    it 'passes if age is greater than 0' do
      patient = Patient.new(age: 0, username: 'Test', parent: 'Test_parent')
      expect(patient).not_to be_valid
      expect(patient.errors.full_messages).to include("Age must be greater than 0")
    
      valid_patient = Patient.new(age: 30, username: 'Test')
      expect(valid_patient).to be_valid
    end

    it 'passes if age is less than 99' do
      patient = Patient.new(age: 100, username: 'Test')
      expect(patient).not_to be_valid
      expect(patient.errors.full_messages).to include("Age must be less than 99")
    
      valid_patient = Patient.new(age: 30, username: 'Test')
      expect(valid_patient).to be_valid
    end

    it 'requires parent if age is less than 21' do
      patient = Patient.new(age: 15, username: 'Test')
      expect(patient).not_to be_valid
      expect(patient.errors.full_messages).to include("Parent can't be blank")
    
      valid_patient = Patient.new(age: 15, username: 'Test', parent: 'test parent')
      expect(valid_patient).to be_valid

      valid_patient = Patient.new(age: 25, username: 'Test')
      expect(valid_patient).to be_valid
    end
  end
end
