require 'test_helper'

class EntidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entidad = entidades(:one)
  end

  test "should get index" do
    get entidades_url
    assert_response :success
  end

  test "should get new" do
    get new_entidad_url
    assert_response :success
  end

  test "should create entidad" do
    assert_difference('Entidad.count') do
      post entidades_url, params: { entidad: { codigo_postal: @entidad.codigo_postal, colonia: @entidad.colonia, contacto_1: @entidad.contacto_1, contacto_2: @entidad.contacto_2, curp: @entidad.curp, delegacion: @entidad.delegacion, direccion: @entidad.direccion, email: @entidad.email, estado: @entidad.estado, no_ext: @entidad.no_ext, no_int: @entidad.no_int, nombre: @entidad.nombre, pais: @entidad.pais, rfc: @entidad.rfc, telefono_1: @entidad.telefono_1, telefono_2: @entidad.telefono_2, telefono_3: @entidad.telefono_3, tipo_entidad_id: @entidad.tipo_entidad_id } }
    end

    assert_redirected_to entidad_url(Entidad.last)
  end

  test "should show entidad" do
    get entidad_url(@entidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_entidad_url(@entidad)
    assert_response :success
  end

  test "should update entidad" do
    patch entidad_url(@entidad), params: { entidad: { codigo_postal: @entidad.codigo_postal, colonia: @entidad.colonia, contacto_1: @entidad.contacto_1, contacto_2: @entidad.contacto_2, curp: @entidad.curp, delegacion: @entidad.delegacion, direccion: @entidad.direccion, email: @entidad.email, estado: @entidad.estado, no_ext: @entidad.no_ext, no_int: @entidad.no_int, nombre: @entidad.nombre, pais: @entidad.pais, rfc: @entidad.rfc, telefono_1: @entidad.telefono_1, telefono_2: @entidad.telefono_2, telefono_3: @entidad.telefono_3, tipo_entidad_id: @entidad.tipo_entidad_id } }
    assert_redirected_to entidad_url(@entidad)
  end

  test "should destroy entidad" do
    assert_difference('Entidad.count', -1) do
      delete entidad_url(@entidad)
    end

    assert_redirected_to entidades_url
  end
end
