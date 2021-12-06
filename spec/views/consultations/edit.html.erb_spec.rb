require 'rails_helper'

RSpec.describe "consultations/edit", type: :view do
  before(:each) do
    @consultation = assign(:consultation, Consultation.create!())
  end

  it "renders the edit consultation form" do
    render

    assert_select "form[action=?][method=?]", consultation_path(@consultation), "post" do
    end
  end
end
