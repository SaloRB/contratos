class SesionesController < ApplicationController
  def new
  end

  def create
	  usuario = Usuario.find_by(email: params[:email])
	  if usuario && usuario.authenticate(params[:password])
	    session[:usuario_id] = usuario.id
	    flash[:info] = "¡Bienvenido #{usuario.email}!"
	    redirect_to root_url
	  else
	    flash.now[:danger] = 'Usuario o contraseña incorrectos'
	    render :new
	  end
	end

	def destroy
		session[:usuario_id] = nil
		flash[:info] = '¡Sesión finalizada!'
		redirect_to root_url
	end
end
