json.extract! air_connection, :id, :origin_airport_id, :destination_airport_id, :aircraft, :distance, :segment_number, :economy_seats, :buisness_seats, :first_class_seats, :created_at, :updated_at
json.url air_connection_url(air_connection, format: :json)
