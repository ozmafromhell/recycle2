require 'test_helper'

class TipoResiduosControllerTest < ActionController::TestCase
  setup do
    @tipo_residuo = tipo_residuos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_residuos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_residuo" do
    assert_difference('TipoResiduo.count') do
      post :create, tipo_residuo: { nombre: @tipo_residuo.nombre }
    end

    assert_redirected_to tipo_residuo_path(assigns(:tipo_residuo))
  end

  test "should show tipo_residuo" do
    get :show, id: @tipo_residuo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_residuo
    assert_response :success
  end

  test "should update tipo_residuo" do
    patch :update, id: @tipo_residuo, tipo_residuo: { nombre: @tipo_residuo.nombre }
    assert_redirected_to tipo_residuo_path(assigns(:tipo_residuo))
  end

  test "should destroy tipo_residuo" do
    assert_difference('TipoResiduo.count', -1) do
      delete :destroy, id: @tipo_residuo
    end

    assert_redirected_to tipo_residuos_path
  end
end
