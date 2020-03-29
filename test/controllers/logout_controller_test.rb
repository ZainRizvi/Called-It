require 'test_helper'

class LogoutControllerTest < ActionDispatch::IntegrationTest
  test "should get logout" do
    get logout_url
    assert_response 302
  end
end
