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
FactoryBot.define do
  factory :rate do
    user { nil }
    comment { "MyString" }
    rateable_id { 1 }
    rateable_type { "Airport" }
    rating { 1 }
  end
end
