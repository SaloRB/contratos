class UsuariosController < ApplicationController
	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(allowed_params)
		if @usuario.save
			session[:usuario_id] = @usuario.id
			redirect_to root_url, notice: 'Thank you for signing up!'
		else
			render :new
		end
	end

	private

	def allowed_params
		params.require(:usuario).permit(:email, :password, :password_confirmation, :admin)
	end
end
