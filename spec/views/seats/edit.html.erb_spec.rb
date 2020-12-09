require "rails_helper"

RSpec.describe "seats/edit", type: :view do
  before(:each) do
    @seat = assign(:seat, Seat.create!(
      flight: create(:flight),
      user: create(:user),
      seat_class: "economy"
    ))
  end

  it "renders the edit seat form" do
    render

    assert_select "form[action=?][method=?]", seat_path(@seat), "post" do
      assert_select "input[name=?]", "seat[flight_id]"

      assert_select "input[name=?]", "seat[user_id]"

      assert_select "input[name=?]", "seat[seat_class]"
    end
  end
end
