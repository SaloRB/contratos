require 'test_helper'

class TipoEntidadesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @tipo_entidad = tipo_entidades(:one)
  end

  test "should redirect index when not logged in" do
    get tipo_entidades_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect new when not logged in" do
    get new_tipo_entidad_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch tipo_entidad_path(@tipo_entidad), params: { tipo: @tipo_entidad.tipo }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect edit when not logged in" do
    get edit_tipo_entidad_path(@tipo_entidad)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  # test "should create tipo_entidad" do
  #   assert_difference 'TipoEntidad.count', 1 do
  #     post tipo_entidades_url, params: { tipo_entidad: { tipo: @tipo_entidad.tipo } }
  #   end

  #   assert_redirected_to tipo_entidad_url(TipoEntidad.last)
  # end

  # test "should show tipo_entidad" do
  #   get tipo_entidad_url(@tipo_entidad)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_tipo_entidad_url(@tipo_entidad)
  #   assert_response :success
  # end

  # test "should update tipo_entidad" do
  #   patch tipo_entidad_url(@tipo_entidad), params: { tipo_entidad: { tipo: @tipo_entidad.tipo } }
  #   assert_redirected_to tipo_entidades_url
  # end

  # test "should destroy tipo_entidad" do
  #   assert_difference('TipoEntidad.count', -1) do
  #     delete tipo_entidad_url(@tipo_entidad)
  #   end

  #   assert_redirected_to tipo_entidades_url
  # end
end
