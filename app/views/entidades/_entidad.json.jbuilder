json.extract! entidad, :id, :nombre, :rfc, :curp, :direccion, :no_ext, :no_int, :delegacion, :colonia, :estado, :pais, :codigo_postal, :telefono_1, :telefono_2, :telefono_3, :email, :contacto_1, :contacto_2, :tipo_entidad_id, :created_at, :updated_at
json.url entidad_url(entidad, format: :json)
