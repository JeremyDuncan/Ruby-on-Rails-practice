require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
    test = Account.create  password: 'password123', email: 'jeremy.duncan1984@gmail.com'
    expect(test.errors[:username]).to_not be_empty
  end

  it 'is not valid without a password' do
    test = Account.create username: 'jduncan', email: 'jeremy.duncan1984@gmail.com'
    expect(test.errors[:password]).to_not be_empty
  end

  it 'is not valid without a email' do
    test = Account.create username: 'jduncan'
    expect(test.errors[:email]).to_not be_empty
  end

  it 'username must contain at least 5 characters' do
    test = Account.create username: 'jdun', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'
    expect(test.errors[:username]).to_not be_empty
  end

  it 'username must be unique' do
    test = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'
    test2 = Account.create username: 'jduncan', password: 'Password123', email: 'jeremy.duncan1984@gmail.com'
    expect(test2.errors[:username]).to_not be_empty
  end

  it 'password must contain at least 6 characters' do
    test = Account.create username: 'jduncan', password: 'Pass', email: 'jeremy.duncan1984@gmail.com'
    expect(test.errors[:password]).to_not be_empty
  end

  it 'password must be unique' do
    test = Account.create username: 'jduncan', password: 'PassWord1234', email: 'jeremy.duncan1984@gmail.com'
    test2 = Account.create username: 'jduncan', password: 'PassWord1234', email: 'jeremy.duncan1984@gmail.com'
    expect(test2.errors[:password]).to_not be_empty
  end

  it 'password must contain at least 1 number' do
    test = Account.create username: 'jduncan', password: 'password', email: 'jeremy.duncan1984@gmail.com'
    expect(test.errors[:password]).to_not be_empty
  end
end

# As a developer, I need each Account password to have at least one number.
# - HINT: Read about [ custom validations ](https://guides.rubyonrails.org/active_record_validations.html#performing-custom-validations) in the Active Record validation docs.
# - As a developer, I want to validate that Address street_number, street_name, zip are unique for within an account.
# - HINT: Read about [ :scope ](https://guides.rubyonrails.org/active_record_validations.html#uniqueness) in the Active Record validation docs.
# - As a developer, I want to validate that the Address street_number and zip are numbers.
# - HINT: Read about [ numericality ](https://edgeguides.rubyonrails.org/active_record_validations.html#numericality) in the Active Record validation docs.
# - As a developer, I want to see a custom error message that says "Please, input numbers only" if street_number or zip code are not numbers.
# - HINT: Read about [ message ](https://edgeguides.rubyonrails.org/active_record_validations.html#message) in the  validation docs.
