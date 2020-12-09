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
require "rails_helper"

RSpec.describe City, type: :model do
  describe 'validations' do
    subject { build(:city) }
    [:city_name, :country, :country_iso_code, :language].each do |attr|
      it { should validate_presence_of(attr) }
    end
    it {should validate_length_of(:country_iso_code).is_at_least(1)}
    it {should validate_length_of(:country_iso_code).is_at_most(3)}
  end

  describe 'associations' do
    it { should have_many(:airports) }
  end
end
