require "rails_helper"

RSpec.describe "seats/show", type: :view do
  before(:each) do
    @seat = assign(:seat, Seat.create!(
      flight: build(:flight),
      user: build(:user),
      seat_class: "economy"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/economy/)
  end
end
