class Address < ApplicationRecord
  belongs_to :account
  validates :street_number, :street_name, :city, :state, presence: true
end
