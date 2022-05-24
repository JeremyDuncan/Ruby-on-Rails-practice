class Account < ApplicationRecord
  has_many :addresses
  validates :username, :password, :email, presence: true
  validates :username, length: { minimum: 5 }
  validates :username, :password, uniqueness: true
  validates :password, length: { minimum: 6 }
end
