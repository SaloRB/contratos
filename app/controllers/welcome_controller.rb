class WelcomeController < ApplicationController
	before_action :logged_in_user_welcome

  def index
  end
end
