module TipoServiciosHelper
	def tipo_servicio_en_uso?(tipo)
		Servicio.where(tipo_servicio: tipo).exists?
	end
end
