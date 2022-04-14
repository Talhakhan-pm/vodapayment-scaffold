class BusinessVerification < ApplicationRecord
  belongs_to :merchant
  validates_presence_of :business_name
end
