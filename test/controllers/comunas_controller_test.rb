require 'test_helper'

class ComunasControllerTest < ActionController::TestCase
  setup do
    @comuna = comunas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comunas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comuna" do
    assert_difference('Comuna.count') do
      post :create, comuna: { ciudad_id: @comuna.ciudad_id, nombre: @comuna.nombre }
    end

    assert_redirected_to comuna_path(assigns(:comuna))
  end

  test "should show comuna" do
    get :show, id: @comuna
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comuna
    assert_response :success
  end

  test "should update comuna" do
    patch :update, id: @comuna, comuna: { ciudad_id: @comuna.ciudad_id, nombre: @comuna.nombre }
    assert_redirected_to comuna_path(assigns(:comuna))
  end

  test "should destroy comuna" do
    assert_difference('Comuna.count', -1) do
      delete :destroy, id: @comuna
    end

    assert_redirected_to comunas_path
  end
end
