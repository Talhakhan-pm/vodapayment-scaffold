class Merchant < ApplicationRecord
  has_many :basic_verifications
  has_many :identity_verifications
  has_many :business_verifications
  
  validates_presence_of :first_name, :last_name
end
