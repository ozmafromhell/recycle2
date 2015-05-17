require 'test_helper'

class SubtipoResiduosControllerTest < ActionController::TestCase
  setup do
    @subtipo_residuo = subtipo_residuos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subtipo_residuos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subtipo_residuo" do
    assert_difference('SubtipoResiduo.count') do
      post :create, subtipo_residuo: { nombre: @subtipo_residuo.nombre, tipoResiduo_id: @subtipo_residuo.tipoResiduo_id }
    end

    assert_redirected_to subtipo_residuo_path(assigns(:subtipo_residuo))
  end

  test "should show subtipo_residuo" do
    get :show, id: @subtipo_residuo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subtipo_residuo
    assert_response :success
  end

  test "should update subtipo_residuo" do
    patch :update, id: @subtipo_residuo, subtipo_residuo: { nombre: @subtipo_residuo.nombre, tipoResiduo_id: @subtipo_residuo.tipoResiduo_id }
    assert_redirected_to subtipo_residuo_path(assigns(:subtipo_residuo))
  end

  test "should destroy subtipo_residuo" do
    assert_difference('SubtipoResiduo.count', -1) do
      delete :destroy, id: @subtipo_residuo
    end

    assert_redirected_to subtipo_residuos_path
  end
end
