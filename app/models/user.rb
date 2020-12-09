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
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  enum id_document_type: [:id_card, :passport, :visa]
  validates_uniqueness_of :email
  validates_presence_of :address, :birth_date, :email, :encrypted_password, :first_name, :last_name, :id_document_type,
    :id_document_number, :phone_number

  has_many :seats
  has_many :rates
end
