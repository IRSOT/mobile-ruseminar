require 'test_helper'

class SeminarsControllerTest < ActionController::TestCase
  setup do
    @seminar = seminars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seminars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seminar" do
    assert_difference('Seminar.count') do
      post :create, seminar: { date_end: @seminar.date_end, date_start: @seminar.date_start, lector: @seminar.lector, online: @seminar.online, price1: @seminar.price1, price2: @seminar.price2, ruseminar_id: @seminar.ruseminar_id, section: @seminar.section, title: @seminar.title, type: @seminar.type, url: @seminar.url }
    end

    assert_redirected_to seminar_path(assigns(:seminar))
  end

  test "should show seminar" do
    get :show, id: @seminar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seminar
    assert_response :success
  end

  test "should update seminar" do
    patch :update, id: @seminar, seminar: { date_end: @seminar.date_end, date_start: @seminar.date_start, lector: @seminar.lector, online: @seminar.online, price1: @seminar.price1, price2: @seminar.price2, ruseminar_id: @seminar.ruseminar_id, section: @seminar.section, title: @seminar.title, type: @seminar.type, url: @seminar.url }
    assert_redirected_to seminar_path(assigns(:seminar))
  end

  test "should destroy seminar" do
    assert_difference('Seminar.count', -1) do
      delete :destroy, id: @seminar
    end

    assert_redirected_to seminars_path
  end
end
