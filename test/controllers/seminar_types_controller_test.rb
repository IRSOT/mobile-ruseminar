require 'test_helper'

class SeminarTypesControllerTest < ActionController::TestCase
  setup do
    @seminar_type = seminar_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seminar_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seminar_type" do
    assert_difference('SeminarType.count') do
      post :create, seminar_type: { type: @seminar_type.type }
    end

    assert_redirected_to seminar_type_path(assigns(:seminar_type))
  end

  test "should show seminar_type" do
    get :show, id: @seminar_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seminar_type
    assert_response :success
  end

  test "should update seminar_type" do
    patch :update, id: @seminar_type, seminar_type: { type: @seminar_type.type }
    assert_redirected_to seminar_type_path(assigns(:seminar_type))
  end

  test "should destroy seminar_type" do
    assert_difference('SeminarType.count', -1) do
      delete :destroy, id: @seminar_type
    end

    assert_redirected_to seminar_types_path
  end
end
