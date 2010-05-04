require 'test_helper'

class DcfsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dcfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dcf" do
    assert_difference('Dcf.count') do
      post :create, :dcf => { }
    end

    assert_redirected_to dcf_path(assigns(:dcf))
  end

  test "should show dcf" do
    get :show, :id => dcfs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dcfs(:one).to_param
    assert_response :success
  end

  test "should update dcf" do
    put :update, :id => dcfs(:one).to_param, :dcf => { }
    assert_redirected_to dcf_path(assigns(:dcf))
  end

  test "should destroy dcf" do
    assert_difference('Dcf.count', -1) do
      delete :destroy, :id => dcfs(:one).to_param
    end

    assert_redirected_to dcfs_path
  end
end
