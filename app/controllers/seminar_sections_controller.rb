class SeminarSectionsController < ApplicationController
  before_action :authenticate_admin!, :except => [:index]
  before_action :set_seminar_section, only: [:show, :edit, :update, :destroy]

  # GET /seminar_sections
  # GET /seminar_sections.json
  def index
      respond_to do |format|
        format.html do
          if admin_signed_in?
                @seminar_sections = SeminarSection.all
          else 
            authenticate_admin!
          end
        end
        format.json { @seminar_sections = SeminarSection.all }
    end
  end

  # GET /seminar_sections/1
  # GET /seminar_sections/1.json
  def show
  end

  # GET /seminar_sections/new
  def new
    @seminar_section = SeminarSection.new
  end

  # GET /seminar_sections/1/edit
  def edit
  end

  # POST /seminar_sections
  # POST /seminar_sections.json
  def create
    @seminar_section = SeminarSection.new(seminar_section_params)

    respond_to do |format|
      if @seminar_section.save
        format.html { redirect_to @seminar_section, notice: 'Seminar section was successfully created.' }
        format.json { render :show, status: :created, location: @seminar_section }
      else
        format.html { render :new }
        format.json { render json: @seminar_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seminar_sections/1
  # PATCH/PUT /seminar_sections/1.json
  def update
    respond_to do |format|
      if @seminar_section.update(seminar_section_params)
        format.html { redirect_to @seminar_section, notice: 'Seminar section was successfully updated.' }
        format.json { render :show, status: :ok, location: @seminar_section }
      else
        format.html { render :edit }
        format.json { render json: @seminar_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminar_sections/1
  # DELETE /seminar_sections/1.json
  def destroy
    @seminar_section.destroy
    respond_to do |format|
      format.html { redirect_to seminar_sections_url, notice: 'Seminar section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seminar_section
      @seminar_section = SeminarSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seminar_section_params
      params.require(:seminar_section).permit(:section)
    end
end
