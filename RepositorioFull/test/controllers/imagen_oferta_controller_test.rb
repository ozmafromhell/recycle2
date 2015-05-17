require 'test_helper'

class ImagenOfertaControllerTest < ActionController::TestCase
  setup do
    @imagen_ofertum = imagen_oferta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagen_oferta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagen_ofertum" do
    assert_difference('ImagenOfertum.count') do
      post :create, imagen_ofertum: { imagen_id: @imagen_ofertum.imagen_id, oferta_id: @imagen_ofertum.oferta_id }
    end

    assert_redirected_to imagen_ofertum_path(assigns(:imagen_ofertum))
  end

  test "should show imagen_ofertum" do
    get :show, id: @imagen_ofertum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagen_ofertum
    assert_response :success
  end

  test "should update imagen_ofertum" do
    patch :update, id: @imagen_ofertum, imagen_ofertum: { imagen_id: @imagen_ofertum.imagen_id, oferta_id: @imagen_ofertum.oferta_id }
    assert_redirected_to imagen_ofertum_path(assigns(:imagen_ofertum))
  end

  test "should destroy imagen_ofertum" do
    assert_difference('ImagenOfertum.count', -1) do
      delete :destroy, id: @imagen_ofertum
    end

    assert_redirected_to imagen_oferta_path
  end
end
