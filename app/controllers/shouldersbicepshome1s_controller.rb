class Shouldersbicepshome1sController < ApplicationController
   before_action :authenticate_user!
  before_action :set_shouldersbicepshome1, only: [:show, :edit, :update, :destroy]

  # GET /shouldersbicepshome1s
  # GET /shouldersbicepshome1s.json
  def index
    @shouldersbicepshome1s = Shouldersbicepshome1.all
  end

  # GET /shouldersbicepshome1s/1
  # GET /shouldersbicepshome1s/1.json
  def show
  end

  # GET /shouldersbicepshome1s/new
  def new
    @shouldersbicepshome1 = Shouldersbicepshome1.new
  end

  # GET /shouldersbicepshome1s/1/edit
  def edit
  end

  # POST /shouldersbicepshome1s
  # POST /shouldersbicepshome1s.json
  def create
    @shouldersbicepshome1 = Shouldersbicepshome1.new(shouldersbicepshome1_params)

    respond_to do |format|
      if @shouldersbicepshome1.save
        format.html { redirect_to @shouldersbicepshome1, notice: 'Shouldersbicepshome1 was successfully created.' }
        format.json { render :show, status: :created, location: @shouldersbicepshome1 }
      else
        format.html { render :new }
        format.json { render json: @shouldersbicepshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouldersbicepshome1s/1
  # PATCH/PUT /shouldersbicepshome1s/1.json
  def update
    respond_to do |format|
      if @shouldersbicepshome1.update(shouldersbicepshome1_params)
        format.html { redirect_to "/shouldersbicepshome1s"}
        #format.json { render :show, status: :ok, location: @shouldersbicepshome1 }
        format.json { head :no_content }
      else
        format.html { render :edit }
        format.json { render json: @shouldersbicepshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouldersbicepshome1s/1
  # DELETE /shouldersbicepshome1s/1.json
  def destroy
    @shouldersbicepshome1.destroy
    respond_to do |format|
      format.html { redirect_to shouldersbicepshome1s_url, notice: 'Shouldersbicepshome1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shouldersbicepshome1
      @shouldersbicepshome1 = Shouldersbicepshome1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shouldersbicepshome1_params
      params.require(:shouldersbicepshome1).permit(:exercise, :reps, :sets)
    end
end
