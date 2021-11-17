require 'rails_helper'

RSpec.describe "medicines/index", type: :view do
  before(:each) do
    assign(:medicines, [
      Medicine.create!(
        name: "Name",
        brand: "Brand",
        unit: "Unit"
      ),
      Medicine.create!(
        name: "Name",
        brand: "Brand",
        unit: "Unit"
      )
    ])
  end

  it "renders a list of medicines" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Brand".to_s, count: 2
    assert_select "tr>td", text: "Unit".to_s, count: 2
  end
end
