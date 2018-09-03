require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should redirect home when not logged in" do
    get root_url
    assert_redirected_to login_url
  end

end
