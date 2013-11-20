require 'test_helper'

class RoutingTest < ActionDispatch::IntegrationTest
  test "admin" do
    assert_recognizes({controller: 'admin/users', action: 'show', id: '100'},
                   'admin/users/100')
  end
end
