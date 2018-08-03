class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
  	@usuario_actual ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end

  def user_admin?
  	@usuario_admin = Usuario.find(session[:usuario_id]).admin
  end  

  helper_method :logged_in?, :user_admin?
end
