class CuricularsController < ApplicationController
  before_action :set_curicular, only: %i[ show edit update destroy ]

  # GET /curiculars or /curiculars.json
  def index
    @curiculars = Curicular.all
  end

  # GET /curiculars/1 or /curiculars/1.json
  def show
  end

  # GET /curiculars/new
  def new
    @curicular = Curicular.new
  end

  # GET /curiculars/1/edit
  def edit
  end

  # POST /curiculars or /curiculars.json
  def create
    @curicular = Curicular.new(curicular_params)

    respond_to do |format|
      if @curicular.save
        format.html { redirect_to @curicular, notice: "Curicular was successfully created." }
        format.json { render :show, status: :created, location: @curicular }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @curicular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curiculars/1 or /curiculars/1.json
  def update
    respond_to do |format|
      if @curicular.update(curicular_params)
        format.html { redirect_to @curicular, notice: "Curicular was successfully updated." }
        format.json { render :show, status: :ok, location: @curicular }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @curicular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curiculars/1 or /curiculars/1.json
  def destroy
    @curicular.destroy
    respond_to do |format|
      format.html { redirect_to curiculars_url, notice: "Curicular was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curicular
      @curicular = Curicular.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curicular_params
      params.require(:curicular).permit(:year, :activity)
    end
end
