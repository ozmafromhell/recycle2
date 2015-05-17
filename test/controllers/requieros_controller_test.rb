require 'test_helper'

class RequierosControllerTest < ActionController::TestCase
  setup do
    @requiero = requieros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requieros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requiero" do
    assert_difference('Requiero.count') do
      post :create, requiero: { tipoResiduo_id: @requiero.tipoResiduo_id, usuario_id: @requiero.usuario_id }
    end

    assert_redirected_to requiero_path(assigns(:requiero))
  end

  test "should show requiero" do
    get :show, id: @requiero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requiero
    assert_response :success
  end

  test "should update requiero" do
    patch :update, id: @requiero, requiero: { tipoResiduo_id: @requiero.tipoResiduo_id, usuario_id: @requiero.usuario_id }
    assert_redirected_to requiero_path(assigns(:requiero))
  end

  test "should destroy requiero" do
    assert_difference('Requiero.count', -1) do
      delete :destroy, id: @requiero
    end

    assert_redirected_to requieros_path
  end
end
