require "rails_helper"

RSpec.describe "air_connections/show", type: :view do
  before(:each) do
    @air_connection = assign(:air_connection, AirConnection.create!(
      origin_airport: build(:airport),
      destination_airport: build(:dest_airport),
      aircraft: "Aircraft",
      distance: 2,
      segment_number: "Segment Number",
      economy_seats: 3,
      buisness_seats: 4,
      first_class_seats: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Aircraft/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Segment Number/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
