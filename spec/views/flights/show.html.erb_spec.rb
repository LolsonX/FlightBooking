require "rails_helper"

RSpec.describe "flights/show", type: :view do
  before(:each) do
    @flight = assign(:flight, Flight.create!(
      air_connection: build(:air_connection),
      economy_seat_price: 2.5,
      buisness_seat_price: 3.5,
      first_class_seat_price: 4.5,
      flying_time: 5.5,
      arrival_time: DateTime.now + 2.hours,
      departure_time: DateTime.now
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
  end
end
