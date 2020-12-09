# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  address                :string           not null
#  birth_date             :date             not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           not null
#  id_document_number     :string           not null
#  id_document_type       :integer          not null
#  last_name              :string           not null
#  phone_number           :string           not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_phone_number          (phone_number) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :user do
    address { "Somewhere" }
    birth_date { Date.current }
    email { "test@example.com" }
    password { "1234qwer" }
    first_name { "Test" }
    id_document_number { "ABC1234" }
    id_document_type { "passport" }
    last_name { "Testowy" }
    phone_number { "5024999123" }
  end
end
