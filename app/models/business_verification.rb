class BusinessVerification < ApplicationRecord
  belongs_to :merchant
  validates_presence_of :business_name
  has_one_attached :bank_log
end
