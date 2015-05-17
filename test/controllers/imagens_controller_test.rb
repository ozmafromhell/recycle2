require 'test_helper'

class ImagensControllerTest < ActionController::TestCase
  setup do
    @imagen = imagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagen" do
    assert_difference('Imagen.count') do
      post :create, imagen: { dato: @imagen.dato, usuario_id: @imagen.usuario_id }
    end

    assert_redirected_to imagen_path(assigns(:imagen))
  end

  test "should show imagen" do
    get :show, id: @imagen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagen
    assert_response :success
  end

  test "should update imagen" do
    patch :update, id: @imagen, imagen: { dato: @imagen.dato, usuario_id: @imagen.usuario_id }
    assert_redirected_to imagen_path(assigns(:imagen))
  end

  test "should destroy imagen" do
    assert_difference('Imagen.count', -1) do
      delete :destroy, id: @imagen
    end

    assert_redirected_to imagens_path
  end
end
