require 'test_helper'

class CepsControllerTest < ActionController::TestCase
  setup do
    @cep = ceps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ceps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cep" do
    assert_difference('Cep.count') do
      post :create, cep: { cep: @cep.cep, id: @cep.id, logradouro: @cep.logradouro }
    end

    assert_redirected_to cep_path(assigns(:cep))
  end

  test "should show cep" do
    get :show, id: @cep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cep
    assert_response :success
  end

  test "should update cep" do
    put :update, id: @cep, cep: { cep: @cep.cep, id: @cep.id, logradouro: @cep.logradouro }
    assert_redirected_to cep_path(assigns(:cep))
  end

  test "should destroy cep" do
    assert_difference('Cep.count', -1) do
      delete :destroy, id: @cep
    end

    assert_redirected_to ceps_path
  end
end
