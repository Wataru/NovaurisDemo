require 'test_helper'

class ActsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create act" do
    assert_difference('Act.count') do
      post :create, :act => { }
    end

    assert_redirected_to act_path(assigns(:act))
  end

  test "should show act" do
    get :show, :id => acts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => acts(:one).to_param
    assert_response :success
  end

  test "should update act" do
    put :update, :id => acts(:one).to_param, :act => { }
    assert_redirected_to act_path(assigns(:act))
  end

  test "should destroy act" do
    assert_difference('Act.count', -1) do
      delete :destroy, :id => acts(:one).to_param
    end

    assert_redirected_to acts_path
  end
end
