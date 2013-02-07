require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "present name" do
    user = User.new(email: "user@example.com")
    user.name = ""
    assert !user.valid?, "Is valid with blank name"
    user.name = "Tom"
    assert user.valid?, "Is invalid with present name"
  end
end

