require 'test_helper'

class AdministradorsControllerTest < ActionController::TestCase
  setup do
    @administrador = administradors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administradors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrador" do
    assert_difference('Administrador.count') do
      post :create, administrador: { ApellidoMaterno: @administrador.ApellidoMaterno, ApellidoPaterno: @administrador.ApellidoPaterno, DNI: @administrador.DNI, Nombres: @administrador.Nombres, user_id: @administrador.user_id }
    end

    assert_redirected_to administrador_path(assigns(:administrador))
  end

  test "should show administrador" do
    get :show, id: @administrador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrador
    assert_response :success
  end

  test "should update administrador" do
    patch :update, id: @administrador, administrador: { ApellidoMaterno: @administrador.ApellidoMaterno, ApellidoPaterno: @administrador.ApellidoPaterno, DNI: @administrador.DNI, Nombres: @administrador.Nombres, user_id: @administrador.user_id }
    assert_redirected_to administrador_path(assigns(:administrador))
  end

  test "should destroy administrador" do
    assert_difference('Administrador.count', -1) do
      delete :destroy, id: @administrador
    end

    assert_redirected_to administradors_path
  end
end
