class DestinationValidator < ActiveModel::Validator
  def validate(record)
    record.errors[:destination_airport] << I18n.t(:destination_airport_error) unless record.origin_airport != record.destination_airport
  end
end
