require 'test_helper'

class ServicioTest < ActiveSupport::TestCase
  
  def setup
  	@tipo_servicio = tipo_servicios(:one)
  	@servicio = @tipo_servicio.servicios.build(nombre: "Renta")
  end

  test "debe ser válido" do
  	assert @servicio.valid?
  end

  test "debe contener id de tipo servicio" do
  	@servicio.tipo_servicio_id = nil
  	assert_not @servicio.valid?
  end

  test "debe tener nombre" do
  	@servicio.nombre = "   "
  	assert_not @servicio.valid?
  end

  # test "no debe tener mas de 20 caracteres" do
  # 	@servicio.nombre = "a" * 21
  # 	assert_not @servicio.valid?
  # end
end
