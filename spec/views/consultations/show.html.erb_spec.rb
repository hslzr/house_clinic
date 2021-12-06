require 'rails_helper'

RSpec.describe "consultations/show", type: :view do
  before(:each) do
    @consultation = assign(:consultation, Consultation.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
