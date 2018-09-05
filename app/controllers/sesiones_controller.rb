class SesionesController < ApplicationController
  def new
  end

  def create
  	usuario = Usuario.find_by(email: params[:session][:email].downcase)
  	if usuario && usuario.authenticate(params[:session][:password])
      log_in(usuario)
  		flash[:info] = "¡Bienvenido #{usuario.email}!"
      redirect_to root_url
  	else
  		flash.now[:danger] = 'Usuario o contraseña incorrectos'
  		render :new
  	end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
