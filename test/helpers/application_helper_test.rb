require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Multitude - Christian Retreats"
    assert_equal full_title("Contact"), "Contact | Multitude - Christian Retreats"
  end
end