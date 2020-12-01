class Shouldersbiceps3sController < ApplicationController
  before_action :set_shouldersbiceps3, only: [:show, :edit, :update, :destroy]

  # GET /shouldersbiceps3s
  # GET /shouldersbiceps3s.json
  def index
    @shouldersbiceps3s = Shouldersbiceps3.all
  end

  # GET /shouldersbiceps3s/1
  # GET /shouldersbiceps3s/1.json
  def show
  end

  # GET /shouldersbiceps3s/new
  def new
    @shouldersbiceps3 = Shouldersbiceps3.new
  end

  # GET /shouldersbiceps3s/1/edit
  def edit
  end

  # POST /shouldersbiceps3s
  # POST /shouldersbiceps3s.json
  def create
    @shouldersbiceps3 = Shouldersbiceps3.new(shouldersbiceps3_params)

    respond_to do |format|
      if @shouldersbiceps3.save
        format.html { redirect_to @shouldersbiceps3, notice: 'Shouldersbiceps3 was successfully created.' }
        format.json { render :show, status: :created, location: @shouldersbiceps3 }
      else
        format.html { render :new }
        format.json { render json: @shouldersbiceps3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouldersbiceps3s/1
  # PATCH/PUT /shouldersbiceps3s/1.json
  def update
    respond_to do |format|
      if @shouldersbiceps3.update(shouldersbiceps3_params)
        format.html { redirect_to "/shouldersbiceps3s"}
        format.json { render :show, status: :ok, location: @shouldersbiceps3 }
      else
        format.html { render :edit }
        format.json { render json: @shouldersbiceps3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouldersbiceps3s/1
  # DELETE /shouldersbiceps3s/1.json
  def destroy
    @shouldersbiceps3.destroy
    respond_to do |format|
      format.html { redirect_to shouldersbiceps3s_url, notice: 'Shouldersbiceps3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shouldersbiceps3
      @shouldersbiceps3 = Shouldersbiceps3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shouldersbiceps3_params
      params.require(:shouldersbiceps3).permit(:exercise, :reps, :sets)
    end
end
