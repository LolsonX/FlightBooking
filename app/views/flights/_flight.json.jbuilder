json.extract! flight, :id, :air_connection_id, :departure_time, :arrival_time, :economy_seat_price, :buisness_seat_price, :first_class_seat_price, :flying_time, :created_at, :updated_at
json.url flight_url(flight, format: :json)
