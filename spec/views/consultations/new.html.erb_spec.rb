require 'rails_helper'

RSpec.describe "consultations/new", type: :view do
  before(:each) do
    assign(:consultation, Consultation.new())
  end

  it "renders new consultation form" do
    render

    assert_select "form[action=?][method=?]", consultations_path, "post" do
    end
  end
end
