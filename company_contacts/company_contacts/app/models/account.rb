class Account < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, length: { minimum: 5 }
end
