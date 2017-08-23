require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  
  def setup
    @group = Group.new(name: 'BBQ')
    @group2 = Group.new(name: 'BBQ')
  end
  
  test 'group is valid' do
    assert @group.valid?
  end
  
  test 'name has presence' do
    @group.name = '   '
    assert_not @group.valid?
  end
  
  test 'name too short' do
    @group.name = 'a'
    assert_not @group.valid?
  end
  
  test 'allow duplicate name' do
    @group2.name = 'BBQ'
    assert @group2.valid?
  end
  
end
