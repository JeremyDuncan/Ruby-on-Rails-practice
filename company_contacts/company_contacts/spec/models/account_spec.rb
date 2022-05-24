require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
    test = Account.create password: 'password123', email: 'jeremy.duncan1984@gmail.com'
    expect(test.errors[:username]).to_not be_empty
  end

  it 'is not valid without a password' do
    test = Account.create username: 'jduncan', email: 'jeremy.duncan1984@gmail.com'
    expect(test.errors[:password]).to_not be_empty
  end
end
