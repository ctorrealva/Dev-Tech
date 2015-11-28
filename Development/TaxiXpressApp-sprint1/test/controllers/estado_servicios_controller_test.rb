require 'test_helper'

class EstadoServiciosControllerTest < ActionController::TestCase
  setup do
    @estado_servicio = estado_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_servicio" do
    assert_difference('EstadoServicio.count') do
      post :create, estado_servicio: { Descripcion: @estado_servicio.Descripcion, IdEstadoServicio: @estado_servicio.IdEstadoServicio }
    end

    assert_redirected_to estado_servicio_path(assigns(:estado_servicio))
  end

  test "should show estado_servicio" do
    get :show, id: @estado_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_servicio
    assert_response :success
  end

  test "should update estado_servicio" do
    patch :update, id: @estado_servicio, estado_servicio: { Descripcion: @estado_servicio.Descripcion, IdEstadoServicio: @estado_servicio.IdEstadoServicio }
    assert_redirected_to estado_servicio_path(assigns(:estado_servicio))
  end

  test "should destroy estado_servicio" do
    assert_difference('EstadoServicio.count', -1) do
      delete :destroy, id: @estado_servicio
    end

    assert_redirected_to estado_servicios_path
  end
end
