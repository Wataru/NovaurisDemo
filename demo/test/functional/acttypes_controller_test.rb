require 'test_helper'

class ActtypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acttype" do
    assert_difference('Acttype.count') do
      post :create, :acttype => { }
    end

    assert_redirected_to acttype_path(assigns(:acttype))
  end

  test "should show acttype" do
    get :show, :id => acttypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => acttypes(:one).to_param
    assert_response :success
  end

  test "should update acttype" do
    put :update, :id => acttypes(:one).to_param, :acttype => { }
    assert_redirected_to acttype_path(assigns(:acttype))
  end

  test "should destroy acttype" do
    assert_difference('Acttype.count', -1) do
      delete :destroy, :id => acttypes(:one).to_param
    end

    assert_redirected_to acttypes_path
  end
end
