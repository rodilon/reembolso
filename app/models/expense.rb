class Expense < ApplicationRecord
  belongs_to :user
  enum status: [:pending, :payd, :aproved, :refused]

  
end
