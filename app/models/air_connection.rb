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
class AirConnection < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :origin_airport, class_name: "Airport"
  belongs_to :destination_airport, class_name: "Airport"
  has_many :intermediate_airports
  has_many :through_airports, through: :intermediate_airports, class_name: "Airport", source: :airport
  has_many :rates, as: :rateable

  validates_presence_of :buisness_seats, :aircraft, :distance, :economy_seats, :first_class_seats, :segment_number
  validates_with DestinationValidator
end
