class SeminarProgramsController < ApplicationController
  before_action :set_seminar_program, only: [:show, :edit, :update, :destroy]

  # GET /seminar_programs
  # GET /seminar_programs.json
  def index
    @seminar_programs = SeminarProgram.all
  end

  # GET /seminar_programs/1
  # GET /seminar_programs/1.json
  def show
  end

  # GET /seminar_programs/new
  def new
    @seminar_program = SeminarProgram.new
  end

  # GET /seminar_programs/1/edit
  def edit
  end

  # POST /seminar_programs
  # POST /seminar_programs.json
  def create
    @seminar_program = SeminarProgram.new(seminar_program_params)

    respond_to do |format|
      if @seminar_program.save
        format.html { redirect_to @seminar_program, notice: 'Seminar program was successfully created.' }
        format.json { render :show, status: :created, location: @seminar_program }
      else
        format.html { render :new }
        format.json { render json: @seminar_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seminar_programs/1
  # PATCH/PUT /seminar_programs/1.json
  def update
    respond_to do |format|
      if @seminar_program.update(seminar_program_params)
        format.html { redirect_to @seminar_program, notice: 'Seminar program was successfully updated.' }
        format.json { render :show, status: :ok, location: @seminar_program }
      else
        format.html { render :edit }
        format.json { render json: @seminar_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminar_programs/1
  # DELETE /seminar_programs/1.json
  def destroy
    @seminar_program.destroy
    respond_to do |format|
      format.html { redirect_to seminar_programs_url, notice: 'Seminar program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seminar_program
      @seminar_program = SeminarProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seminar_program_params
      params.require(:seminar_program).permit(:ruseminar_id, :program)
    end
end
