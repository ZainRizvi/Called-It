require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect when not logged in" do
    get dashboard_path
    assert_response 302
  end

end
