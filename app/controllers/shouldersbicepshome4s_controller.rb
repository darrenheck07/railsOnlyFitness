class Shouldersbicepshome4sController < ApplicationController
  before_action :set_shouldersbicepshome4, only: [:show, :edit, :update, :destroy]

  # GET /shouldersbicepshome4s
  # GET /shouldersbicepshome4s.json
  def index
    @shouldersbicepshome4s = Shouldersbicepshome4.all
  end

  # GET /shouldersbicepshome4s/1
  # GET /shouldersbicepshome4s/1.json
  def show
  end

  # GET /shouldersbicepshome4s/new
  def new
    @shouldersbicepshome4 = Shouldersbicepshome4.new
  end

  # GET /shouldersbicepshome4s/1/edit
  def edit
  end

  # POST /shouldersbicepshome4s
  # POST /shouldersbicepshome4s.json
  def create
    @shouldersbicepshome4 = Shouldersbicepshome4.new(shouldersbicepshome4_params)

    respond_to do |format|
      if @shouldersbicepshome4.save
        format.html { redirect_to @shouldersbicepshome4, notice: 'Shouldersbicepshome4 was successfully created.' }
        format.json { render :show, status: :created, location: @shouldersbicepshome4 }
      else
        format.html { render :new }
        format.json { render json: @shouldersbicepshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouldersbicepshome4s/1
  # PATCH/PUT /shouldersbicepshome4s/1.json
  def update
    respond_to do |format|
      if @shouldersbicepshome4.update(shouldersbicepshome4_params)
        format.html { redirect_to "/shouldersbicepshome4s"}
        format.json { render :show, status: :ok, location: @shouldersbicepshome4 }
      else
        format.html { render :edit }
        format.json { render json: @shouldersbicepshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouldersbicepshome4s/1
  # DELETE /shouldersbicepshome4s/1.json
  def destroy
    @shouldersbicepshome4.destroy
    respond_to do |format|
      format.html { redirect_to shouldersbicepshome4s_url, notice: 'Shouldersbicepshome4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shouldersbicepshome4
      @shouldersbicepshome4 = Shouldersbicepshome4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shouldersbicepshome4_params
      params.require(:shouldersbicepshome4).permit(:exercise, :reps, :sets)
    end
end
