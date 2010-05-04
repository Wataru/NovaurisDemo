require 'test_helper'

class DrvesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drf" do
    assert_difference('Drf.count') do
      post :create, :drf => { }
    end

    assert_redirected_to drf_path(assigns(:drf))
  end

  test "should show drf" do
    get :show, :id => drves(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => drves(:one).to_param
    assert_response :success
  end

  test "should update drf" do
    put :update, :id => drves(:one).to_param, :drf => { }
    assert_redirected_to drf_path(assigns(:drf))
  end

  test "should destroy drf" do
    assert_difference('Drf.count', -1) do
      delete :destroy, :id => drves(:one).to_param
    end

    assert_redirected_to drves_path
  end
end
