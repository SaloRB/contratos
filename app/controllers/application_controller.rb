class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SesionesHelper

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
