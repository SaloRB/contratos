require 'test_helper'

class ServiciosControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @servicio = servicios(:one)
  end

  test "should redirect index when not logged in" do
    get servicios_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect new when not logged in" do
    get new_servicio_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch servicio_path(@servicio), params: { nombre: @servicio.nombre }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect edit when not logged in" do
    get edit_servicio_path(@servicio)
    assert_not flash.empty?
    assert_redirected_to login_url
  end
end
