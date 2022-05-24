class Account < ApplicationRecord
  validates :username, :password, :email, presence: true
end
