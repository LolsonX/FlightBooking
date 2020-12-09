require "rails_helper"

RSpec.describe "air_connections/new", type: :view do
  before(:each) do
    assign(:air_connection, AirConnection.new(
      origin_airport: nil,
      destination_airport: nil,
      aircraft: "MyString",
      distance: 1,
      segment_number: "MyString",
      economy_seats: 1,
      buisness_seats: 1,
      first_class_seats: 1
    ))
  end

  it "renders new air_connection form" do
    render

    assert_select "form[action=?][method=?]", air_connections_path, "post" do
      assert_select "input[name=?]", "air_connection[origin_airport_id]"

      assert_select "input[name=?]", "air_connection[destination_airport_id]"

      assert_select "input[name=?]", "air_connection[aircraft]"

      assert_select "input[name=?]", "air_connection[distance]"

      assert_select "input[name=?]", "air_connection[segment_number]"

      assert_select "input[name=?]", "air_connection[economy_seats]"

      assert_select "input[name=?]", "air_connection[buisness_seats]"

      assert_select "input[name=?]", "air_connection[first_class_seats]"
    end
  end
end
