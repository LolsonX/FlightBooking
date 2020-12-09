# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  seat_class :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  flight_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_seats_on_flight_id  (flight_id)
#  index_seats_on_user_id    (user_id)
#
# Foreign Keys
#
#  flight_id  (flight_id => flights.id)
#  user_id    (user_id => users.id)
#
require "rails_helper"

RSpec.describe Seat, type: :model do
  describe 'validations' do
    subject { build(:seat) }
    it { should validate_presence_of(:seat_class) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:flight) }
  end
end
