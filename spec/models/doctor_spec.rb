require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'validations' do
    subject { Doctor.new }
    
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:license_number)}
    it { is_expected.to validate_uniqueness_of(:license_number)}
  end

  describe '#presentation' do
    it 'passes if presentation returns license number and name' do
    doctor = Doctor.new(name: "Bob Saget", license_number: 3)

    expect(doctor.presentation).to eq("#3: Bob Saget")
    end 
  end

#   pending "add some examples to (or delete) #{__FILE__}"
end
