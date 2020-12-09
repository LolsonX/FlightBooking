require "rails_helper"

RSpec.describe "flights/edit", type: :view do
  before(:each) do
    @flight = assign(:flight, Flight.create!(
      air_connection: build(:air_connection),
      economy_seat_price: 1.5,
      buisness_seat_price: 1.5,
      first_class_seat_price: 1.5,
      flying_time: 1.5,
      departure_time: DateTime.now,
      arrival_time: DateTime.now + 2.hours
    ))
  end

  it "renders the edit flight form" do
    render

    assert_select "form[action=?][method=?]", flight_path(@flight), "post" do
      assert_select "input[name=?]", "flight[air_connection_id]"

      assert_select "input[name=?]", "flight[economy_seat_price]"

      assert_select "input[name=?]", "flight[buisness_seat_price]"

      assert_select "input[name=?]", "flight[first_class_seat_price]"

      assert_select "input[name=?]", "flight[flying_time]"
    end
  end
end
