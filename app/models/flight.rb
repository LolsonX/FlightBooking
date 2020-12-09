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
class Flight < ApplicationRecord
  belongs_to :air_connection
  has_many :seats
  has_many :users, through: :seats

  validates_presence_of :arrival_time, :buisness_seat_price, :departure_time, :economy_seat_price,
    :first_class_seat_price, :flying_time
end
