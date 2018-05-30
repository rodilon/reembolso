class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
    enum kind: [:manager, :administrative, :admin, :general]
    enum status: [:active, :inactive]

    has_many :expenses
end
