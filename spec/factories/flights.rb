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
FactoryBot.define do
  factory :flight do
    air_connection { build(:air_connection) }
    departure_time { "2020-12-09 16:13:17" }
    arrival_time { "2020-12-09 16:13:17" }
    economy_seat_price { 1.5 }
    buisness_seat_price { 1.5 }
    first_class_seat_price { 1.5 }
    flying_time { 1.5 }
  end
end
