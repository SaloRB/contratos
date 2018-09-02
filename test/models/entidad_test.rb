require 'test_helper'

class EntidadTest < ActiveSupport::TestCase
  
  def setup
  	@tipo_entidad = tipo_entidades(:one)
  	@entidad = @tipo_entidad.entidades.build(nombre: "Salomon")
  end

  test "debe ser válido" do
  	assert @entidad.valid?
  end

  test "debe contener id de tipo entidad" do
  	@entidad.tipo_entidad_id = nil
  	assert_not @entidad.valid?
  end

  test "debe tener nombre" do
  	@entidad.nombre = "   "
  	assert_not @entidad.valid?
  end  
end
