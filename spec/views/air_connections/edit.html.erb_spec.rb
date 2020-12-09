require "rails_helper"

RSpec.describe "air_connections/edit", type: :view do
  before(:each) do
    @air_connection = assign(:air_connection, AirConnection.create!(
      origin_airport: build(:airport),
      destination_airport: build(:dest_airport),
      aircraft: "MyString",
      distance: 1,
      segment_number: "MyString",
      economy_seats: 1,
      buisness_seats: 1,
      first_class_seats: 1
    ))
  end

  it "renders the edit air_connection form" do
    render

    assert_select "form[action=?][method=?]", air_connection_path(@air_connection), "post" do
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
