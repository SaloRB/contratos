module TipoEntidadesHelper
	def tipo_entidad_en_uso?(tipo)
		Entidad.where(tipo_entidad: tipo).exists?
	end
end
