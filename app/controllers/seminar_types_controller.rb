class SeminarTypesController < ApplicationController
  before_action :authenticate_admin!, :except => [:index]

  before_action :set_seminar_type, only: [:show, :edit, :update, :destroy]

  # GET /seminar_types
  # GET /seminar_types.json
  def index
    respond_to do |format|
        format.html do
          if admin_signed_in?
                @seminar_types = SeminarType.all
          else 
            authenticate_admin!
          end
        end
        format.json { @seminar_types = SeminarType.all }
    end
  end

  # GET /seminar_types/1
  # GET /seminar_types/1.json
  def show
  end

  # GET /seminar_types/new
  def new
    @seminar_type = SeminarType.new
  end

  # GET /seminar_types/1/edit
  def edit
  end

  # POST /seminar_types
  # POST /seminar_types.json
  def create
    @seminar_type = SeminarType.new(seminar_type_params)

    respond_to do |format|
      if @seminar_type.save
        format.html { redirect_to @seminar_type, notice: 'Seminar type was successfully created.' }
        format.json { render :show, status: :created, location: @seminar_type }
      else
        format.html { render :new }
        format.json { render json: @seminar_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seminar_types/1
  # PATCH/PUT /seminar_types/1.json
  def update
    respond_to do |format|
      if @seminar_type.update(seminar_type_params)
        format.html { redirect_to @seminar_type, notice: 'Seminar type was successfully updated.' }
        format.json { render :show, status: :ok, location: @seminar_type }
      else
        format.html { render :edit }
        format.json { render json: @seminar_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminar_types/1
  # DELETE /seminar_types/1.json
  def destroy
    @seminar_type.destroy
    respond_to do |format|
      format.html { redirect_to seminar_types_url, notice: 'Seminar type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seminar_type
      @seminar_type = SeminarType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seminar_type_params
      params.require(:seminar_type).permit(:type)
    end
end
