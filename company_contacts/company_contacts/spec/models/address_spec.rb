require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without street_name' do
    test = Address.create street_number: 123, street_name: 'coder lane', city: 'Atlanta', state: 'GA', zip: 30_031
    expect(test.errors[:street_number]).to_not be_empty
  end
end
