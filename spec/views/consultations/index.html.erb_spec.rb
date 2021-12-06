require 'rails_helper'

RSpec.describe "consultations/index", type: :view do
  before(:each) do
    assign(:consultations, [
      Consultation.create!(),
      Consultation.create!()
    ])
  end

  it "renders a list of consultations" do
    render
  end
end
