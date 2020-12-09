# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  seat_class :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  flight_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_seats_on_flight_id  (flight_id)
#  index_seats_on_user_id    (user_id)
#
# Foreign Keys
#
#  flight_id  (flight_id => flights.id)
#  user_id    (user_id => users.id)
#
class Seat < ApplicationRecord
  belongs_to :flight
  belongs_to :user

  enum seat_class: [:economy, :buisness, :first_class]

  validates_presence_of :seat_class
end
