require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without street_number' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_name: 'coder lane', city: 'Atlanta', state: 'GA', zip: 30_313
    expect(test_address.errors[:street_number]).to_not be_empty
  end

  it 'is not valid without street_name' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_number: 1, city: 'Atlanta', state: 'GA', zip: 30_313
    expect(test_address.errors[:street_name]).to_not be_empty
  end

  it 'is not valid without city' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_name: 'Coder Lane', street_number: 1, state: 'GA', zip: 30_313
    expect(test_address.errors[:city]).to_not be_empty
  end

  it 'is not valid without street_name' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_name: 'Coder Lane', street_number: 1, city: 'Atlanta', zip: 30_313
    expect(test_address.errors[:street_name]).to_not be_empty
  end
end

# it 'is not valid without street_number' do
#   test = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

#   test.addresses.create street_number: 123, street_name: 'coder lane', city: 'Atlanta', state: 'GA', zip: 30_313

#   expect(test.errors[:street_number]).to_not be_empty
# end

# expect(act[:street_name]).to eq 'coder lane'
