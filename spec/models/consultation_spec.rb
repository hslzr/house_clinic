require 'rails_helper'

RSpec.describe Consultation, type: :model do
    subject { Consultation.new(start_time: DateTime.now, end_time: DateTime.now + 1.hour) }
    describe 'validations' do
        it { is_expected.to validate_presence_of(:start_time)}
        it { is_expected.to validate_presence_of(:end_time)}
    end

    describe 'associations' do
        it { is_expected.to belong_to(:patient)}
        it { is_expected.to belong_to(:doctor)}
    end
end 