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
FactoryBot.define do
  factory :air_connection do
    origin_airport { build(:airport) }
    destination_airport { build(:dest_airport) }
    aircraft { "MyString" }
    distance { 1 }
    segment_number { "MyString" }
    economy_seats { 1 }
    buisness_seats { 1 }
    first_class_seats { 1 }
  end
  factory :air_connection1, class: AirConnection do
    origin_airport { build(:airport) }
    destination_airport { build(:dest_airport) }
    aircraft { "MyString" }
    distance { 1 }
    segment_number { "MyString" }
    economy_seats { 1 }
    buisness_seats { 1 }
    first_class_seats { 1 }
  end
end
