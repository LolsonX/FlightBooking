# == Schema Information
#
# Table name: cities
#
#  id               :integer          not null, primary key
#  city_name        :string           not null
#  country          :string           not null
#  country_iso_code :string(3)        not null
#  language         :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :city do
    city_name { "Warszawa" }
    country { "Poland" }
    language { "Polish" }
    country_iso_code { "PL" }
  end
  factory :city1, class: City do
    city_name { "Krakow" }
    country { "Poland" }
    language { "polish" }
    country_iso_code { "PL" }
  end
end
