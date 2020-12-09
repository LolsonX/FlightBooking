require "rails_helper"

RSpec.describe "seats/new", type: :view do
  before(:each) do
    assign(:seat, Seat.new(
      flight: nil,
      user: nil,
      seat_class: 1
    ))
  end

  it "renders new seat form" do
    render

    assert_select "form[action=?][method=?]", seats_path, "post" do
      assert_select "input[name=?]", "seat[flight_id]"

      assert_select "input[name=?]", "seat[user_id]"

      assert_select "input[name=?]", "seat[seat_class]"
    end
  end
end
