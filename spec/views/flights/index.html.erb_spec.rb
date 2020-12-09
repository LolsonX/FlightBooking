require "rails_helper"

RSpec.describe "flights/index", type: :view do
  before(:each) do
    assign(:flights, [
      Flight.create!(
        air_connection: create(:air_connection),
        economy_seat_price: 2.5,
        buisness_seat_price: 3.5,
        first_class_seat_price: 4.5,
        flying_time: 5.5,
        departure_time: DateTime.now,
        arrival_time: DateTime.now + 2.hours
      ),
      Flight.create!(
        air_connection: create(:air_connection1),
        economy_seat_price: 2.5,
        buisness_seat_price: 3.5,
        first_class_seat_price: 4.5,
        flying_time: 5.5,
        departure_time: DateTime.now,
        arrival_time: DateTime.now + 2.hours
      )
    ])
  end

  it "renders a list of flights" do
    render
    assert_select "tr>td", text: 1.to_s, count: 1
    assert_select "tr>td", text: 2.to_s, count: 1
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: 5.5.to_s, count: 2
  end
end
