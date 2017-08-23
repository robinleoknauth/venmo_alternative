require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  def setup
    @group = Group.create(name: 'Test')
    @user = User.create(name: 'TestUser', nickname: 'testUser')
    @payment = Payment.create(group: @group, user: @user, amount: 1, description: 'Description')
  end
  
  test 'payment is valid' do
    assert @payment.valid?
  end
  
end
