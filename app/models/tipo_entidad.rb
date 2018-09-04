class TipoEntidad < ApplicationRecord
	has_many :entidades
	validates :tipo, presence: true, length: { maximum: 20 }, uniqueness: true
end
