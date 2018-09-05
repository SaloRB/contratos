class Usuario < ApplicationRecord
	has_secure_password

	# Returns hash digest for given string.
	def Usuario.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
																									BCrypt::Engine.cost

		BCrypt::Password.create(string, cost: cost)
	end
end
