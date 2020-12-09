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
FactoryBot.define do
  factory :intermediate_airport do
    airport { nil }
    air_connection { nil }
    stop_number { 1 }
  end
end
