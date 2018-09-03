require 'test_helper'

class TipoServiciosControllerTest < ActionDispatch::IntegrationTest

	def setup
		@tipo_servicio = tipo_servicios(:one)
	end

  test "should redirect index when not logged in" do
    get tipo_servicios_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect new when not logged in" do
    get new_tipo_servicio_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch tipo_servicio_path(@tipo_servicio), params: { tipo: @tipo_servicio.tipo }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect edit when not logged in" do
    get edit_tipo_servicio_path(@tipo_servicio)
    assert_not flash.empty?
    assert_redirected_to login_url
  end
end
