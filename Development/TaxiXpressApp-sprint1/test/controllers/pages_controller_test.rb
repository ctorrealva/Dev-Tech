require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get nosotros" do
    get :nosotros
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get historial" do
    get :historial
    assert_response :success
  end

  test "should get pedirtaxi" do
    get :pedirtaxi
    assert_response :success
  end

  test "should get favorito" do
    get :favorito
    assert_response :success
  end

  test "should get score" do
    get :score
    assert_response :success
  end

  test "should get calificar" do
    get :calificar
    assert_response :success
  end

  test "should get vehiculo" do
    get :vehiculo
    assert_response :success
  end

  test "should get conductor" do
    get :conductor
    assert_response :success
  end

  test "should get parametro" do
    get :parametro
    assert_response :success
  end

end
