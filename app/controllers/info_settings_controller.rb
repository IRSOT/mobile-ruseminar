class InfoSettingsController < ApplicationController
  before_action :authenticate_admin!, :except => [:index]
  before_action :set_info_setting, only: [:show, :edit, :update, :destroy]

  def index
    respond_to do |format|
      format.html do
        if admin_signed_in?
          @info_settings = InfoSetting.all
        else 
          authenticate_admin!
        end
      end
      format.json do 
        @info_settings = InfoSetting.all
        # @info_setting = info_pages
      end
    end
  end

  def show
    # respond_with(@info_setting)
  end

  def new
    @info_setting = InfoSetting.new
    # respond_with(@info_setting)
  end

  def edit
  end

  def create
    @info_setting = InfoSetting.new(info_setting_params)

    respond_to do |format|
      if @info_setting.save
        format.html { redirect_to @info_setting, notice: 'URL and title were successfully created.' }
        format.json { render :show, status: :created, location: @info_setting }
      else
        format.html { render :new }
        format.json { render json: @info_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @info_setting.update(info_setting_params)
        format.html { redirect_to @info_setting, notice: 'URL and title were successfully updated.' }
        format.json { render :show, status: :ok, location: @lector }
      else
        format.html { render :edit }
        format.json { render json: @info_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @info_setting.destroy
    respond_to do |format|
      format.html { redirect_to info_settings_url, notice: 'URL and title were successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_info_setting
      @info_setting = InfoSetting.find(params[:id])
    end

    def info_setting_params
      params.require(:info_setting).permit(:category, :page_url, :title_rus, :title_eng)
    end

    def cluster
      cluster = []
      each do |element|
        if cluster.last && yield(cluster.last.last) == yield(element)
          cluster.last << element
        else
          cluster << [element]
        end
      end
      cluster
    end
end
