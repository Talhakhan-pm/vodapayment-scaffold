class BasicVerification < ApplicationRecord
  belongs_to :merchant
  validates_presence_of :address_1, :city, :state, :zip, message: "Please fill in all the fields"
end
