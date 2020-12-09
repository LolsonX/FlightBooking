require "rails_helper"

RSpec.describe "air_connections/index", type: :view do
  before(:each) do
    assign(:air_connections, [
      AirConnection.create!(
          origin_airport: build(:airport),
          destination_airport: build(:dest_airport),
          aircraft: "Aircraft",
          distance: 2,
          segment_number: "Segment Number",
          economy_seats: 3,
          buisness_seats: 4,
          first_class_seats: 5
      ),
      AirConnection.create!(
          origin_airport: build(:airport),
          destination_airport: build(:dest_airport),
          aircraft: "Aircraft",
          distance: 2,
          segment_number: "Segment Number",
          economy_seats: 3,
          buisness_seats: 4,
          first_class_seats: 5
      )
    ])
  end

  it "renders a list of air_connections" do
    render
    assert_select "tr>td", text: 1.to_s, count: 1
    assert_select "tr>td", text: 2.to_s, count: 3
    assert_select "tr>td", text: 3.to_s, count: 3
    assert_select "tr>td", text: 4.to_s, count: 3
    assert_select "tr>td", text: "Aircraft".to_s, count: 2
    assert_select "tr>td", text: "Segment Number".to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end
