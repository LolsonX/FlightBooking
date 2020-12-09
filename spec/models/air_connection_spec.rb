# == Schema Information
#
# Table name: air_connections
#
#  id                     :integer          not null, primary key
#  aircraft               :string           not null
#  buisness_seats         :integer          default(0), not null
#  distance               :integer          not null
#  economy_seats          :integer          default(0), not null
#  first_class_seats      :integer          default(0), not null
#  segment_number         :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  destination_airport_id :integer          not null
#  origin_airport_id      :integer          not null
#
# Indexes
#
#  index_air_connections_on_destination_airport_id  (destination_airport_id)
#  index_air_connections_on_origin_airport_id       (origin_airport_id)
#
# Foreign Keys
#
#  destination_airport_id  (destination_airport_id => airports.id)
#  origin_airport_id       (origin_airport_id => airports.id)
#
require 'rails_helper'

RSpec.describe AirConnection, type: :model do
  describe 'validations' do
    subject { build(:air_connection) }
    it { should validate_presence_of(:aircraft) }
    it { should validate_presence_of(:buisness_seats) }
    it { should validate_presence_of(:distance) }
    it { should validate_presence_of(:economy_seats) }
    it { should validate_presence_of(:first_class_seats) }
    it { should validate_presence_of(:segment_number) }
  end

  describe 'associations' do
    it { should belong_to(:origin_airport).class_name("Airport")}
    it { should belong_to(:destination_airport).class_name("Airport")}
    it { should have_many(:intermediate_airports)}
    it { should have_many(:through_airports)}
    it { should have_many(:rates)}
  end
end
