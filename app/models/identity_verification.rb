class IdentityVerification < ApplicationRecord
 
  belongs_to :merchant
  has_one_attached :dl_front
  has_one_attached :dl_back
  has_one_attached :picture

  validates :ssn, length: { maximum: 11 } 
  validates_presence_of :dob, :dl_front, :dl_back, :picture
end
