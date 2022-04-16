class BusinessVerification < ApplicationRecord
  belongs_to :merchant
  has_one_attached :bank_log
  has_one_attached :business_doc_1
  has_one_attached :business_doc_2
  validates_presence_of :business_name, :website, :ein
end
