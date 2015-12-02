require 'test_helper'

class ServiceStatesControllerTest < ActionController::TestCase
  setup do
    @service_state = service_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_state" do
    assert_difference('ServiceState.count') do
      post :create, service_state: { description: @service_state.description }
    end

    assert_redirected_to service_state_path(assigns(:service_state))
  end

  test "should show service_state" do
    get :show, id: @service_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_state
    assert_response :success
  end

  test "should update service_state" do
    patch :update, id: @service_state, service_state: { description: @service_state.description }
    assert_redirected_to service_state_path(assigns(:service_state))
  end

  test "should destroy service_state" do
    assert_difference('ServiceState.count', -1) do
      delete :destroy, id: @service_state
    end

    assert_redirected_to service_states_path
  end
end
