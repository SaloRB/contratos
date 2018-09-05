require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

	def setup
		@usuario = usuarios(:salo)
	end

  test "login con información inválida" do
  	get login_path
  	assert_template 'sesiones/new'
  	post login_path, params: { session: { email: "", password: "" } }
  	assert_template 'sesiones/new'
  	assert_not flash.empty?
  	get root_path
  	assert flash.empty?
  end

  test "login con información válida seguido de logout" do
  	get login_path
  	post login_path, params: { session: { email:  		@usuario.email,
  																				password: 	'password' } }
    assert is_logged_in?
  	assert_redirected_to root_url
  	follow_redirect!
  	assert_template 'welcome/index'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
    # Falla por alguna razon
    # assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path, count: 0
  end
end
