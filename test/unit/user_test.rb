require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "present username" do
    user = User.new
    user.name = ""
    assert !user.valid?, "Is valid with blank username"
    user.name = "Tom"
    assert user.valid?
  end
end
