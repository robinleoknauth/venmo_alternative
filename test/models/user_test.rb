require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.create(name: 'Bob', nickname: 'Bobby')
    @user2 = User.create(name: 'Alice', nickname: 'Allie')
  end
  
  test 'user is valid' do
    assert @user.valid?
    assert @user2.valid?
  end
  
  test 'name has presence' do
    @user.name = '   '
    assert_not @user.valid?
  end
  
  # test 'email has presence' do
  #   @user.email = '   '
  #   assert_not @user.valid?
  # end
  
  test 'name too short' do
    @user.name = 'a'
    assert_not @user.valid?
  end
  
  test 'nickname has presence' do
    @user.nickname = '    '
    assert_not @user.valid?
  end
  
  test 'unique nickname' do
    @user2.nickname = 'Bobby'
    assert_not @user2.valid?
  end
  
end
