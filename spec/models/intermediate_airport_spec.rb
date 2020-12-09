# == Schema Information
#
# Table name: intermediate_airports
#
#  id                :integer          not null, primary key
#  stop_number       :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  air_connection_id :integer          not null
#  airport_id        :integer          not null
#
# Indexes
#
#  index_intermediate_airports_on_air_connection_id  (air_connection_id)
#  index_intermediate_airports_on_airport_id         (airport_id)
#
# Foreign Keys
#
#  air_connection_id  (air_connection_id => air_connections.id)
#  airport_id         (airport_id => airports.id)
#
require "rails_helper"

RSpec.describe IntermediateAirport, type: :model do
  describe 'validations' do
    subject { build(:intermediate_airport) }
    it { should validate_presence_of(:stop_number)}
  end

  describe 'associations' do
    it { should belong_to(:air_connection) }
    it { should belong_to(:airport) }
  end
end
