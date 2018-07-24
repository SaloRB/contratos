class TipoEntidad < ApplicationRecord
	has_many :entidades
	validates :tipo, presence: true
end
