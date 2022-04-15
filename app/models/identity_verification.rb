class IdentityVerification < ApplicationRecord
  belongs_to :merchant
  has_one_attached :dl_front
  has_one_attached :dl_back
  has_one_attached :picture

  validates_presence_of :ssn, :dl_front, :dl_back, :picture
end
