class Address < ApplicationRecord
  belongs_to :account
  validates :street_number, :street_name, :city, :state, :zip, presence: true

  validates :street_name, uniqueness: true
  validates :street_number, uniqueness: true
  validates :zip, uniqueness: true
end
