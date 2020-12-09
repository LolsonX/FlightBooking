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
class City < ApplicationRecord
  has_many :airports

  validates_presence_of :city_name, :country_iso_code, :language, :country
  validates_length_of :country_iso_code, minimum: 1, maximum: 3
end
