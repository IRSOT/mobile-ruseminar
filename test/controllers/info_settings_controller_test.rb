require 'test_helper'

class InfoSettingsControllerTest < ActionController::TestCase
  setup do
    @info_setting = info_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:info_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info_setting" do
    assert_difference('InfoSetting.count') do
      post :create, info_setting: { category: @info_setting.category, title_eng: @info_setting.title_eng, title_rus: @info_setting.title_rus, url: @info_setting.url }
    end

    assert_redirected_to info_setting_path(assigns(:info_setting))
  end

  test "should show info_setting" do
    get :show, id: @info_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info_setting
    assert_response :success
  end

  test "should update info_setting" do
    patch :update, id: @info_setting, info_setting: { category: @info_setting.category, title_eng: @info_setting.title_eng, title_rus: @info_setting.title_rus, url: @info_setting.url }
    assert_redirected_to info_setting_path(assigns(:info_setting))
  end

  test "should destroy info_setting" do
    assert_difference('InfoSetting.count', -1) do
      delete :destroy, id: @info_setting
    end

    assert_redirected_to info_settings_path
  end
end
