class Shouldersbicepshome3sController < ApplicationController
  before_action :set_shouldersbicepshome3, only: [:show, :edit, :update, :destroy]

  # GET /shouldersbicepshome3s
  # GET /shouldersbicepshome3s.json
  def index
    @shouldersbicepshome3s = Shouldersbicepshome3.all
  end

  # GET /shouldersbicepshome3s/1
  # GET /shouldersbicepshome3s/1.json
  def show
  end

  # GET /shouldersbicepshome3s/new
  def new
    @shouldersbicepshome3 = Shouldersbicepshome3.new
  end

  # GET /shouldersbicepshome3s/1/edit
  def edit
  end

  # POST /shouldersbicepshome3s
  # POST /shouldersbicepshome3s.json
  def create
    @shouldersbicepshome3 = Shouldersbicepshome3.new(shouldersbicepshome3_params)

    respond_to do |format|
      if @shouldersbicepshome3.save
        format.html { redirect_to @shouldersbicepshome3, notice: 'Shouldersbicepshome3 was successfully created.' }
        format.json { render :show, status: :created, location: @shouldersbicepshome3 }
      else
        format.html { render :new }
        format.json { render json: @shouldersbicepshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouldersbicepshome3s/1
  # PATCH/PUT /shouldersbicepshome3s/1.json
  def update
    respond_to do |format|
      if @shouldersbicepshome3.update(shouldersbicepshome3_params)
        format.html { redirect_to "/shouldersbicepshome3s"}
        format.json { render :show, status: :ok, location: @shouldersbicepshome3 }
      else
        format.html { render :edit }
        format.json { render json: @shouldersbicepshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouldersbicepshome3s/1
  # DELETE /shouldersbicepshome3s/1.json
  def destroy
    @shouldersbicepshome3.destroy
    respond_to do |format|
      format.html { redirect_to shouldersbicepshome3s_url, notice: 'Shouldersbicepshome3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shouldersbicepshome3
      @shouldersbicepshome3 = Shouldersbicepshome3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shouldersbicepshome3_params
      params.require(:shouldersbicepshome3).permit(:exercise, :reps, :sets)
    end
end
