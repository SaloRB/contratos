class TipoServicio < ApplicationRecord
	has_many :servicios
	validates :tipo, presence: true, length: { maximum: 20}, uniqueness: true
end
