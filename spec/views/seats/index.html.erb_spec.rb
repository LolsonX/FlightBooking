require "rails_helper"

RSpec.describe "seats/index", type: :view do
  before(:each) do
    assign(:seats, [
      Seat.create!(
        flight: create(:flight),
        user: create(:user),
        seat_class: "economy"
      ),
      Seat.create!(
        flight: create(:flight),
        user: create(:user, email: "inny@mail.com", phone_number: "111111111"),
        seat_class: "economy"
      )
    ])
  end

  it "renders a list of seats" do
    render
    assert_select "tr>td", text: 1.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "economy", count: 2

  end
end
