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
require "rails_helper"

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { build(:user) }
    [:email, :encrypted_password, :phone_number, :address, :birth_date, :first_name, :last_name, :id_document_type, :id_document_number].each do |attr|
      it { should validate_presence_of(attr) }
    end
  end

  describe 'associations' do
    it { should have_many(:seats) }
    it { should have_many(:rates) }
  end
end
