require 'test_helper'

class ExhibsControllerTest < ActionController::TestCase
  setup do
    @exhib = exhibs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhib" do
    assert_difference('Exhib.count') do
      post :create, exhib: {  }
    end

    assert_redirected_to exhib_path(assigns(:exhib))
  end

  test "should show exhib" do
    get :show, id: @exhib
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhib
    assert_response :success
  end

  test "should update exhib" do
    patch :update, id: @exhib, exhib: {  }
    assert_redirected_to exhib_path(assigns(:exhib))
  end

  test "should destroy exhib" do
    assert_difference('Exhib.count', -1) do
      delete :destroy, id: @exhib
    end

    assert_redirected_to exhibs_path
  end
end
