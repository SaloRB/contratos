class Entidad < ApplicationRecord
  belongs_to :tipo_entidad
  validates :tipo_entidad_id, presence: true
  validates :nombre, presence: true
end
