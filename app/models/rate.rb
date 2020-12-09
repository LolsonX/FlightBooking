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
class Rate < ApplicationRecord
  belongs_to :user
  belongs_to :rateable, polymorphic: true

  validates_presence_of :rateable_type, :comment, :rating, :rateable_id
  validates_numericality_of :rating, greater_than_or_equal_to: 0, less_than_or_equal_to: 5
end
