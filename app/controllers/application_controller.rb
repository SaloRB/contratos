class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
  	@usuario_actual ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end

  def user_admin?
  	@usuario_admin = Usuario.find(session[:usuario_id]).admin
  end

  helper_method :logged_in?, :user_admin?

  private

  	def logged_in_user
  		unless logged_in?
  			flash[:danger] = "Favor de Iniciar Sesión"
  			redirect_to login_url
  		end
  	end

    def logged_in_user_welcome
      unless logged_in?
        redirect_to login_url
      end
    end    
end
