class InfoSettingsController < ApplicationController
  before_action :authenticate_admin!, :except => [:index]
  before_action :set_info_setting, only: [:show, :edit, :update, :destroy]

  def index
    @info_settings = InfoSetting.all
    respond_with(@info_settings)
  end

  def show
    respond_with(@info_setting)
  end

  def new
    @info_setting = InfoSetting.new
    respond_with(@info_setting)
  end

  def edit
  end

  def create
    @info_setting = InfoSetting.new(info_setting_params)
    @info_setting.save
    respond_with(@info_setting)
  end

  def update
    @info_setting.update(info_setting_params)
    respond_with(@info_setting)
  end

  def destroy
    @info_setting.destroy
    respond_with(@info_setting)
  end

  private
    def set_info_setting
      @info_setting = InfoSetting.find(params[:id])
    end

    def info_setting_params
      params.require(:info_setting).permit(:category, :url, :title_rus, :title_eng)
    end
end
