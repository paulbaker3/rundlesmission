require 'test_helper'

class MyssionsControllerTest < ActionController::TestCase
  setup do
    @myssion = myssions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myssions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myssion" do
    assert_difference('Myssion.count') do
      post :create, myssion: { description: @myssion.description, location: @myssion.location, risk_value: @myssion.risk_value }
    end

    assert_redirected_to myssion_path(assigns(:myssion))
  end

  test "should show myssion" do
    get :show, id: @myssion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myssion
    assert_response :success
  end

  test "should update myssion" do
    patch :update, id: @myssion, myssion: { description: @myssion.description, location: @myssion.location, risk_value: @myssion.risk_value }
    assert_redirected_to myssion_path(assigns(:myssion))
  end

  test "should destroy myssion" do
    assert_difference('Myssion.count', -1) do
      delete :destroy, id: @myssion
    end

    assert_redirected_to myssions_path
  end
end
