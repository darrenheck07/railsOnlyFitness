class Shouldersbiceps2sController < ApplicationController
  before_action :set_shouldersbiceps2, only: [:show, :edit, :update, :destroy]

  # GET /shouldersbiceps2s
  # GET /shouldersbiceps2s.json
  def index
    @shouldersbiceps2s = Shouldersbiceps2.all
  end

  # GET /shouldersbiceps2s/1
  # GET /shouldersbiceps2s/1.json
  def show
  end

  # GET /shouldersbiceps2s/new
  def new
    @shouldersbiceps2 = Shouldersbiceps2.new
  end

  # GET /shouldersbiceps2s/1/edit
  def edit
  end

  # POST /shouldersbiceps2s
  # POST /shouldersbiceps2s.json
  def create
    @shouldersbiceps2 = Shouldersbiceps2.new(shouldersbiceps2_params)

    respond_to do |format|
      if @shouldersbiceps2.save
        format.html { redirect_to @shouldersbiceps2, notice: 'Shouldersbiceps2 was successfully created.' }
        format.json { render :show, status: :created, location: @shouldersbiceps2 }
      else
        format.html { render :new }
        format.json { render json: @shouldersbiceps2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouldersbiceps2s/1
  # PATCH/PUT /shouldersbiceps2s/1.json
  def update
    respond_to do |format|
      if @shouldersbiceps2.update(shouldersbiceps2_params)
        format.html { redirect_to "/shouldersbiceps2s"}
        format.json { render :show, status: :ok, location: @shouldersbiceps2 }
      else
        format.html { render :edit }
        format.json { render json: @shouldersbiceps2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouldersbiceps2s/1
  # DELETE /shouldersbiceps2s/1.json
  def destroy
    @shouldersbiceps2.destroy
    respond_to do |format|
      format.html { redirect_to shouldersbiceps2s_url, notice: 'Shouldersbiceps2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shouldersbiceps2
      @shouldersbiceps2 = Shouldersbiceps2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shouldersbiceps2_params
      params.require(:shouldersbiceps2).permit(:exercise, :reps, :sets)
    end
end
