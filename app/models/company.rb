class Company < ApplicationRecord
  belongs_to :user

  has_many :receipts
  has_one :plan
  
end
