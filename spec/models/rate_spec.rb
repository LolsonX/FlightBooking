# == Schema Information
#
# Table name: rates
#
#  id            :integer          not null, primary key
#  comment       :string           not null
#  rateable_type :string           not null
#  rating        :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  rateable_id   :integer          not null
#  user_id       :integer          not null
#
# Indexes
#
#  index_rates_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "rails_helper"

RSpec.describe Rate, type: :model do
  describe 'validations' do
    subject { build(:rate) }
    [:comment, :rateable_type, :rating].each do |attr|
      it { should validate_presence_of(attr) }
    end
    it { should validate_numericality_of(:rating).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }
  end

  describe 'associations' do
    it { should belong_to(:rateable) }
    it { should belong_to(:user) }
  end
end
