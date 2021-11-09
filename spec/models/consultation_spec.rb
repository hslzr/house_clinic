require 'rails_helper'

RSpec.describe Doctor, type: :model do
    describe 'validations' do
        it { is_expected.to validate_presence_of(:start_time, :end_time)}

      end

    describe 'associations' do
        is { is_expected.to belong_to(:patient)}
        is { is_expected.to belong_to(:doctor)}
    end


end 