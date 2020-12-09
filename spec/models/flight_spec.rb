# == Schema Information
#
# Table name: flights
#
#  id                     :integer          not null, primary key
#  arrival_time           :datetime         not null
#  buisness_seat_price    :float            not null
#  departure_time         :datetime         not null
#  economy_seat_price     :float            not null
#  first_class_seat_price :float            not null
#  flying_time            :float            not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  air_connection_id      :integer          not null
#
# Indexes
#
#  index_flights_on_air_connection_id  (air_connection_id)
#
# Foreign Keys
#
#  air_connection_id  (air_connection_id => air_connections.id)
#
require "rails_helper"

RSpec.describe Flight, type: :model do
  describe 'validations' do
    subject { build(:flight) }
    [:arrival_time, :buisness_seat_price, :departure_time, :economy_seat_price, :first_class_seat_price, :flying_time].each do |attr|
      it { should validate_presence_of(attr) }
    end
  end

  describe 'associations' do
    it { should belong_to(:air_connection) }
  end
end
