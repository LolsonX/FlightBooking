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
class Airport < ApplicationRecord
  belongs_to :city
  has_many :rates, as: :rateable
  enum airport_type: [:small, :medium, :large, :military]

  validates_presence_of :airport_type, :iata_code, :name
  validates_length_of :iata_code, minimum:1, maximum: 3
  validates_length_of :name, minimum:1, maximum: 255
end
