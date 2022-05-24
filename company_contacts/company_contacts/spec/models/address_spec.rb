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

  it 'is not valid without state' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_name: 'Coder Lane', street_number: 1, city: 'Atlanta', zip: 30_313
    expect(test_address.errors[:state]).to_not be_empty
  end

  it 'is not valid without zip' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_name: 'Coder Lane', street_number: 1, city: 'Atlanta', state: 'GA'
    expect(test_address.errors[:zip]).to_not be_empty
  end

  it 'Street name is unique' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta', state: 'GA',
                                             zip: 30_301, account_id: 1
    test_address2 = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta',
                                              state: 'GA', zip: 30_301, account_id: 1
    test_address3 = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta',
                                              state: 'GA', zip: 30_301, account_id: 1

    expect(test_address3.errors[:street_name]).to_not be_empty
  end

  it 'Street number is unique' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta', state: 'GA',
                                             zip: 30_301, account_id: 1
    test_address2 = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta',
                                              state: 'GA', zip: 30_301, account_id: 1
    test_address3 = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta',
                                              state: 'GA', zip: 30_301, account_id: 1

    expect(test_address3.errors[:street_number]).to_not be_empty
  end

  it 'zip is unique' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta', state: 'GA',
                                             zip: 30_301, account_id: 1
    test_address2 = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta',
                                              state: 'GA', zip: 30_301, account_id: 1
    test_address3 = new_user.addresses.create street_name: 'Coder2', street_number: 1, city: 'Atlanta',
                                              state: 'GA', zip: 30_301, account_id: 1

    expect(test_address3.errors[:zip]).to_not be_empty
  end

  it 'Street number is a number' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address3 = new_user.addresses.create street_name: 'Coder2', street_number: 'five', city: 'Atlanta',
                                              state: 'GA', zip: 30_301, account_id: 1

    expect(test_address3.errors[:street_number]).to_not be_empty
  end

  it 'zip is a number' do
    new_user = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'

    test_address3 = new_user.addresses.create street_name: 'Coder2', street_number: 134, city: 'Atlanta',
                                              state: 'GA', zip: 'three o one', account_id: 1

    expect(test_address3.errors[:zip]).to_not be_empty
  end
end

# - HINT: Read about [ numericality ](https://edgeguides.rubyonrails.org/active_record_validations.html#numericality) in the Active Record validation docs.
# - As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
# - HINT: Read about [ message ](https://edgeguides.rubyonrails.org/active_record_validations.html#message) in the  validation docs.
