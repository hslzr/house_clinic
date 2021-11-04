require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'doctor must have a name' do 
    it 'passes if name is present' do
      doctor = Doctor.new

      expect(doctor).not_to be_valid
      expect(doctor.errors.full_messages).to include("Name can't be blank")
    end
  end
  
  describe 'doctor must have a unique license number' do
    it 'passes if license number is unique' do
      doctor1 = Doctor.new(license_number: 1)
      doctor2 = Doctor.new(license_number: 1)

      expect(doctor2).not_to be_valid
  end
end

  describe '.presentation' do
    it 'passes if presentation returns license number and name' do
    doctor = Doctor.new(name: "Bob Saget", license_number: 3)

    expect(doctor.presentation).to eq("#3: Bob Saget")
    end 
  end

  pending "add some examples to (or delete) #{__FILE__}"
end
