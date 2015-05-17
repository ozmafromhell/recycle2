require 'test_helper'

class AlcancesControllerTest < ActionController::TestCase
  setup do
    @alcance = alcances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alcances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alcance" do
    assert_difference('Alcance.count') do
      post :create, alcance: { comuna_id: @alcance.comuna_id, usuario_id: @alcance.usuario_id }
    end

    assert_redirected_to alcance_path(assigns(:alcance))
  end

  test "should show alcance" do
    get :show, id: @alcance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alcance
    assert_response :success
  end

  test "should update alcance" do
    patch :update, id: @alcance, alcance: { comuna_id: @alcance.comuna_id, usuario_id: @alcance.usuario_id }
    assert_redirected_to alcance_path(assigns(:alcance))
  end

  test "should destroy alcance" do
    assert_difference('Alcance.count', -1) do
      delete :destroy, id: @alcance
    end

    assert_redirected_to alcances_path
  end
end
