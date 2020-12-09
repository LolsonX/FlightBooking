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
require "rails_helper"

RSpec.describe Airport, type: :model do
  describe 'validations' do
    subject { build(:airport) }
    [:airport_type, :iata_code, :name].each do |attr|
      it { should validate_presence_of(attr) }
    end
    it {should validate_length_of(:iata_code).is_at_least(1)}
    it {should validate_length_of(:iata_code).is_at_most(3)}
    it {should validate_length_of(:name).is_at_least(1)}
    it {should validate_length_of(:name).is_at_most(255)}
  end

  describe 'associations' do
    subject { build(:airport) }
    it { should belong_to(:city) }
    it { should have_many(:rates) }
  end
end
