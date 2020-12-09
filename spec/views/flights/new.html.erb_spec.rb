require "rails_helper"

RSpec.describe "flights/new", type: :view do
  before(:each) do
    assign(:flight, Flight.new(
      air_connection: nil,
      economy_seat_price: 1.5,
      buisness_seat_price: 1.5,
      first_class_seat_price: 1.5,
      flying_time: 1.5
    ))
  end

  it "renders new flight form" do
    render

    assert_select "form[action=?][method=?]", flights_path, "post" do
      assert_select "input[name=?]", "flight[air_connection_id]"

      assert_select "input[name=?]", "flight[economy_seat_price]"

      assert_select "input[name=?]", "flight[buisness_seat_price]"

      assert_select "input[name=?]", "flight[first_class_seat_price]"

      assert_select "input[name=?]", "flight[flying_time]"
    end
  end
end
