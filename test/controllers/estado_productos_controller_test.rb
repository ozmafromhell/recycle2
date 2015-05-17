require 'test_helper'

class EstadoProductosControllerTest < ActionController::TestCase
  setup do
    @estado_producto = estado_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_producto" do
    assert_difference('EstadoProducto.count') do
      post :create, estado_producto: { estado_id: @estado_producto.estado_id, oferta_id: @estado_producto.oferta_id }
    end

    assert_redirected_to estado_producto_path(assigns(:estado_producto))
  end

  test "should show estado_producto" do
    get :show, id: @estado_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_producto
    assert_response :success
  end

  test "should update estado_producto" do
    patch :update, id: @estado_producto, estado_producto: { estado_id: @estado_producto.estado_id, oferta_id: @estado_producto.oferta_id }
    assert_redirected_to estado_producto_path(assigns(:estado_producto))
  end

  test "should destroy estado_producto" do
    assert_difference('EstadoProducto.count', -1) do
      delete :destroy, id: @estado_producto
    end

    assert_redirected_to estado_productos_path
  end
end
