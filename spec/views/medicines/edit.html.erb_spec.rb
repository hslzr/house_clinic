require 'rails_helper'

RSpec.describe "medicines/edit", type: :view do
  before(:each) do
    @medicine = assign(:medicine, Medicine.create!(
      name: "MyString",
      brand: "MyString",
      unit: "MyString"
    ))
  end

  it "renders the edit medicine form" do
    render

    assert_select "form[action=?][method=?]", medicine_path(@medicine), "post" do

      assert_select "input[name=?]", "medicine[name]"

      assert_select "input[name=?]", "medicine[brand]"

      assert_select "input[name=?]", "medicine[unit]"
    end
  end
end
