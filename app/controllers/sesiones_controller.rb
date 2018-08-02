class SesionesController < ApplicationController
  def new
  end

  def create
	  usuario = Usuario.find_by(email: params[:email])
	  if usuario && usuario.authenticate(params[:password])
	    session[:usuario_id] = usuario.id
	    redirect_to root_url, notice: '¡Bienvenido ' << usuario.email << '!'
	  else
	    flash.now.notice = 'Usuario o contraseña incorrectos'
	    render :new
	  end
	end

	def destroy
		session[:usuario_id] = nil
		redirect_to root_url, notice: '¡Sesión finalizada!'
	end
end
