require 'test_helper'

class InteresControllerTest < ActionController::TestCase
  setup do
    @intere = interes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intere" do
    assert_difference('Intere.count') do
      post :create, intere: { dinero: @intere.dinero, fecha: @intere.fecha, material: @intere.material, mensaje: @intere.mensaje, motivo: @intere.motivo, oferta_id: @intere.oferta_id, otro: @intere.otro, usuario_id: @intere.usuario_id }
    end

    assert_redirected_to intere_path(assigns(:intere))
  end

  test "should show intere" do
    get :show, id: @intere
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intere
    assert_response :success
  end

  test "should update intere" do
    patch :update, id: @intere, intere: { dinero: @intere.dinero, fecha: @intere.fecha, material: @intere.material, mensaje: @intere.mensaje, motivo: @intere.motivo, oferta_id: @intere.oferta_id, otro: @intere.otro, usuario_id: @intere.usuario_id }
    assert_redirected_to intere_path(assigns(:intere))
  end

  test "should destroy intere" do
    assert_difference('Intere.count', -1) do
      delete :destroy, id: @intere
    end

    assert_redirected_to interes_path
  end
end
