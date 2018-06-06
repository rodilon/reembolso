class Company < ApplicationRecord
  belongs_to :user

  enum status: [:active, :inactive]
  
  has_many :receipts
  has_one :plan
  
end
