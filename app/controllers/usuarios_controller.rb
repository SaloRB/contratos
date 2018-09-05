class UsuariosController < ApplicationController
	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(allowed_params)
		if @usuario.save
			log_in(@usuario)
			flash[:info] = '¡Usuario creado con éxito!'
			redirect_to root_url
		else
			render :new
		end
	end

	private

	def allowed_params
		params.require(:usuario).permit(:email, :password, :password_confirmation, :admin)
	end
end
