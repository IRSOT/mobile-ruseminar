require 'test_helper'

class SeminarSectionsControllerTest < ActionController::TestCase
  setup do
    @seminar_section = seminar_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seminar_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seminar_section" do
    assert_difference('SeminarSection.count') do
      post :create, seminar_section: { section: @seminar_section.section }
    end

    assert_redirected_to seminar_section_path(assigns(:seminar_section))
  end

  test "should show seminar_section" do
    get :show, id: @seminar_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seminar_section
    assert_response :success
  end

  test "should update seminar_section" do
    patch :update, id: @seminar_section, seminar_section: { section: @seminar_section.section }
    assert_redirected_to seminar_section_path(assigns(:seminar_section))
  end

  test "should destroy seminar_section" do
    assert_difference('SeminarSection.count', -1) do
      delete :destroy, id: @seminar_section
    end

    assert_redirected_to seminar_sections_path
  end
end
