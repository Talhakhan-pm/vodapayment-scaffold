class Funding < ApplicationRecord
  has_one_attached :image
  validates_presence_of :title, :checking_num, :routing_num, :image
end
