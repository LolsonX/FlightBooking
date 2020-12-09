# == Schema Information
#
# Table name: airports
#
#  id           :integer          not null, primary key
#  airport_type :integer          not null
#  iata_code    :string(3)        not null
#  name         :string(255)      not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  city_id      :integer          not null
#
# Indexes
#
#  index_airports_on_city_id  (city_id)
#
# Foreign Keys
#
#  city_id  (city_id => cities.id)
#
FactoryBot.define do
  factory :airport do
    iata_code { "WOC" }
    name { "MyString" }
    airport_type { "small" }
    city { build(:city) }
  end

  factory :dest_airport, class: Airport do
    iata_code { "WAW" }
    name { "MyString2" }
    airport_type { "small" }
    city { build(:city1) }
  end
end
