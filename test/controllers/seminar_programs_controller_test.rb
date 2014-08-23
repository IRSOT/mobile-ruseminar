require 'test_helper'

class SeminarProgramsControllerTest < ActionController::TestCase
  setup do
    @seminar_program = seminar_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seminar_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seminar_program" do
    assert_difference('SeminarProgram.count') do
      post :create, seminar_program: { program: @seminar_program.program, ruseminar_id: @seminar_program.ruseminar_id }
    end

    assert_redirected_to seminar_program_path(assigns(:seminar_program))
  end

  test "should show seminar_program" do
    get :show, id: @seminar_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seminar_program
    assert_response :success
  end

  test "should update seminar_program" do
    patch :update, id: @seminar_program, seminar_program: { program: @seminar_program.program, ruseminar_id: @seminar_program.ruseminar_id }
    assert_redirected_to seminar_program_path(assigns(:seminar_program))
  end

  test "should destroy seminar_program" do
    assert_difference('SeminarProgram.count', -1) do
      delete :destroy, id: @seminar_program
    end

    assert_redirected_to seminar_programs_path
  end
end
