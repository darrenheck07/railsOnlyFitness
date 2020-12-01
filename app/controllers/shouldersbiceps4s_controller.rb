class Shouldersbiceps4sController < ApplicationController
  before_action :set_shouldersbiceps4, only: [:show, :edit, :update, :destroy]

  # GET /shouldersbiceps4s
  # GET /shouldersbiceps4s.json
  def index
    @shouldersbiceps4s = Shouldersbiceps4.all
  end

  # GET /shouldersbiceps4s/1
  # GET /shouldersbiceps4s/1.json
  def show
  end

  # GET /shouldersbiceps4s/new
  def new
    @shouldersbiceps4 = Shouldersbiceps4.new
  end

  # GET /shouldersbiceps4s/1/edit
  def edit
  end

  # POST /shouldersbiceps4s
  # POST /shouldersbiceps4s.json
  def create
    @shouldersbiceps4 = Shouldersbiceps4.new(shouldersbiceps4_params)

    respond_to do |format|
      if @shouldersbiceps4.save
        format.html { redirect_to @shouldersbiceps4, notice: 'Shouldersbiceps4 was successfully created.' }
        format.json { render :show, status: :created, location: @shouldersbiceps4 }
      else
        format.html { render :new }
        format.json { render json: @shouldersbiceps4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouldersbiceps4s/1
  # PATCH/PUT /shouldersbiceps4s/1.json
  def update
    respond_to do |format|
      if @shouldersbiceps4.update(shouldersbiceps4_params)
        format.html { redirect_to "/shouldersbiceps4s"}
        format.json { render :show, status: :ok, location: @shouldersbiceps4 }
      else
        format.html { render :edit }
        format.json { render json: @shouldersbiceps4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouldersbiceps4s/1
  # DELETE /shouldersbiceps4s/1.json
  def destroy
    @shouldersbiceps4.destroy
    respond_to do |format|
      format.html { redirect_to shouldersbiceps4s_url, notice: 'Shouldersbiceps4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shouldersbiceps4
      @shouldersbiceps4 = Shouldersbiceps4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shouldersbiceps4_params
      params.require(:shouldersbiceps4).permit(:exercise, :reps, :sets)
    end
end
