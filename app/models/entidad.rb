class Entidad < ApplicationRecord
  belongs_to :tipo_entidad
  validates :nombre, presence: true
end
