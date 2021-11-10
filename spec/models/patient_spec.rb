require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe 'validations' do
    subject { Patient.new(age: 20) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_length_of(:username).is_at_least(4) }

    it { is_expected.to validate_presence_of(:age)}
    it { is_expected.to validate_numericality_of(:age)}
    it { is_expected.to validate_numericality_of(:age).is_less_than(99).is_greater_than(0) }   

  end
end
