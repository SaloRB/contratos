require 'test_helper'

class TipoServiciosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_tipo_servicio_url
    assert_response :success
  end
end
