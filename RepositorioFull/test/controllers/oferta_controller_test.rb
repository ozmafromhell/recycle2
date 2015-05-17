require 'test_helper'

class OfertaControllerTest < ActionController::TestCase
  setup do
    @ofertum = oferta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oferta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ofertum" do
    assert_difference('Ofertum.count') do
      post :create, ofertum: { atencionDesde: @ofertum.atencionDesde, atencionHasta: @ofertum.atencionHasta, desde: @ofertum.desde, hasta: @ofertum.hasta, subtipoResiduo_id: @ofertum.subtipoResiduo_id, tipoResiduo_id: @ofertum.tipoResiduo_id, titulo: @ofertum.titulo, transporte: @ofertum.transporte }
    end

    assert_redirected_to ofertum_path(assigns(:ofertum))
  end

  test "should show ofertum" do
    get :show, id: @ofertum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ofertum
    assert_response :success
  end

  test "should update ofertum" do
    patch :update, id: @ofertum, ofertum: { atencionDesde: @ofertum.atencionDesde, atencionHasta: @ofertum.atencionHasta, desde: @ofertum.desde, hasta: @ofertum.hasta, subtipoResiduo_id: @ofertum.subtipoResiduo_id, tipoResiduo_id: @ofertum.tipoResiduo_id, titulo: @ofertum.titulo, transporte: @ofertum.transporte }
    assert_redirected_to ofertum_path(assigns(:ofertum))
  end

  test "should destroy ofertum" do
    assert_difference('Ofertum.count', -1) do
      delete :destroy, id: @ofertum
    end

    assert_redirected_to oferta_path
  end
end
