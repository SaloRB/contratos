class Servicio < ApplicationRecord
  belongs_to :tipo_servicio
  validates :tipo_servicio_id, presence: true
  validates :nombre, presence: true
end
