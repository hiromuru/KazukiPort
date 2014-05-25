require 'test_helper'

class SculpsControllerTest < ActionController::TestCase
  setup do
    @sculp = sculps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sculps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sculp" do
    assert_difference('Sculp.count') do
      post :create, sculp: {  }
    end

    assert_redirected_to sculp_path(assigns(:sculp))
  end

  test "should show sculp" do
    get :show, id: @sculp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sculp
    assert_response :success
  end

  test "should update sculp" do
    patch :update, id: @sculp, sculp: {  }
    assert_redirected_to sculp_path(assigns(:sculp))
  end

  test "should destroy sculp" do
    assert_difference('Sculp.count', -1) do
      delete :destroy, id: @sculp
    end

    assert_redirected_to sculps_path
  end
end
