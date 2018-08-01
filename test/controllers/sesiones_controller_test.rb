require 'test_helper'

class SesionesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sesiones_new_url
    assert_response :success
  end

end
