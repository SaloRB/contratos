# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Usuarios
Usuario.create!(email: 									'admin@example.com', 
								password: 							'password', 
								password_confirmation: 	'password', 
								admin: 									true)

# Tipos de Entidad
TipoEntidad.create!(tipo: "Cliente")
TipoEntidad.create!(tipo: "Proveedor")
TipoEntidad.create!(tipo: "Empresa")
TipoEntidad.create!(tipo: "Presidente")

# Tipos de Servicio
TipoServicio.create!(tipo: "Mantenimiento")
TipoServicio.create!(tipo: "Renta")
TipoServicio.create!(tipo: "Administración")

# Entidades
Entidad.create!(nombre: 					"Andrés Manuel Lopez Obrador",
								rfc: 							"XAXX010101000",
								curp: 						"XAXX010101HDFMGL05",
								direccion: 				"Av. Molino del Rey",
								delegacion: 			"Miguel Hidalgo",
								colonia: 					"San Miguel Chapultepec",
								estado: 					"Ciudad de México",
								pais: 						"México",
								codigo_postal: 		"11850",
								telefono_1: 			"50935300",
								email: 						"elpresidente@mexico.com",
								contacto_1: 			"Olga Sánchez Cordero",
								contacto_2: 			"Héctor Vasconcelos",
								tipo_entidad_id: 	4)