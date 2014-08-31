class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :edit, :update, :destroy]

  # GET /seminars
  # GET /seminars.json
  def index
    @seminars = Seminar.all.order(:date_start)
  end

  def import
    file = params[:seminar_import_file]
    if file.nil?
      redirect_to admin_url, alert: "No file uploaded!"
      return
    end

    import_result = Seminar.import(file)
    if !import_result.empty?
      import = Import.new(date: Date.today, file: file.original_filename)
      import.save!
      redirect_to admin_url, notice: "Seminars import: #{import_result[0]} seminars added, #{import_result[1]} seminars updated, file: #{import.file}"
    end
  end

  # GET /seminars/1
  # GET /seminars/1.json
  def show
  end

  # GET /seminars/new
  def new
    @seminar = Seminar.new
  end

  # GET /seminars/1/edit
  def edit
  end

  # POST /seminars
  # POST /seminars.json
  def create
    @seminar = Seminar.new(seminar_params)

    respond_to do |format|
      if @seminar.save
        format.html { redirect_to @seminar, notice: 'Seminar was successfully created.' }
        format.json { render :show, status: :created, location: @seminar }
      else
        format.html { render :new }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seminars/1
  # PATCH/PUT /seminars/1.json
  def update
    respond_to do |format|
      if @seminar.update(seminar_params)
        format.html { redirect_to @seminar, notice: 'Seminar was successfully updated.' }
        format.json { render :show, status: :ok, location: @seminar }
      else
        format.html { render :edit }
        format.json { render json: @seminar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminars/1
  # DELETE /seminars/1.json
  def destroy
    @seminar.destroy
    respond_to do |format|
      format.html { redirect_to seminars_url, notice: 'Seminar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seminar
      @seminar = Seminar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seminar_params
      params.require(:seminar).permit(:ruseminar_id, :title, :seminar_type_id, :seminar_section_id, :date_start, :date_end, :online, :lectors, :url, :price1, :price2)
    end
end
