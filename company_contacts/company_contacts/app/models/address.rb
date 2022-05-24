class Address < ApplicationRecord
  belongs_to :account
  validates :street_number, presence: true
end
