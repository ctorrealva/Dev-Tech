require 'test_helper'

class ServiciosControllerTest < ActionController::TestCase
  setup do
    @servicio = servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicio" do
    assert_difference('Servicio.count') do
      post :create, servicio: { Comentario: @servicio.Comentario, Destino: @servicio.Destino, FechaHora: @servicio.FechaHora, IdServicio: @servicio.IdServicio, Monto: @servicio.Monto, Origen: @servicio.Origen, Puntaje: @servicio.Puntaje, cliente_id: @servicio.cliente_id, conductor_id: @servicio.conductor_id, estadoservicio_id: @servicio.estadoservicio_id, tipopago_id: @servicio.tipopago_id, vehiculo_id: @servicio.vehiculo_id }
    end

    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should show servicio" do
    get :show, id: @servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicio
    assert_response :success
  end

  test "should update servicio" do
    patch :update, id: @servicio, servicio: { Comentario: @servicio.Comentario, Destino: @servicio.Destino, FechaHora: @servicio.FechaHora, IdServicio: @servicio.IdServicio, Monto: @servicio.Monto, Origen: @servicio.Origen, Puntaje: @servicio.Puntaje, cliente_id: @servicio.cliente_id, conductor_id: @servicio.conductor_id, estadoservicio_id: @servicio.estadoservicio_id, tipopago_id: @servicio.tipopago_id, vehiculo_id: @servicio.vehiculo_id }
    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should destroy servicio" do
    assert_difference('Servicio.count', -1) do
      delete :destroy, id: @servicio
    end

    assert_redirected_to servicios_path
  end
end
