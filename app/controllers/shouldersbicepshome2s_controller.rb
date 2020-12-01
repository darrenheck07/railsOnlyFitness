class Shouldersbicepshome2sController < ApplicationController
  before_action :set_shouldersbicepshome2, only: [:show, :edit, :update, :destroy]

  # GET /shouldersbicepshome2s
  # GET /shouldersbicepshome2s.json
  def index
    @shouldersbicepshome2s = Shouldersbicepshome2.all
  end

  # GET /shouldersbicepshome2s/1
  # GET /shouldersbicepshome2s/1.json
  def show
  end

  # GET /shouldersbicepshome2s/new
  def new
    @shouldersbicepshome2 = Shouldersbicepshome2.new
  end

  # GET /shouldersbicepshome2s/1/edit
  def edit
  end

  # POST /shouldersbicepshome2s
  # POST /shouldersbicepshome2s.json
  def create
    @shouldersbicepshome2 = Shouldersbicepshome2.new(shouldersbicepshome2_params)

    respond_to do |format|
      if @shouldersbicepshome2.save
        format.html { redirect_to @shouldersbicepshome2, notice: 'Shouldersbicepshome2 was successfully created.' }
        format.json { render :show, status: :created, location: @shouldersbicepshome2 }
      else
        format.html { render :new }
        format.json { render json: @shouldersbicepshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouldersbicepshome2s/1
  # PATCH/PUT /shouldersbicepshome2s/1.json
  def update
    respond_to do |format|
      if @shouldersbicepshome2.update(shouldersbicepshome2_params)
        format.html { redirect_to "/shouldersbicepshome2s"}
        format.json { render :show, status: :ok, location: @shouldersbicepshome2 }
      else
        format.html { render :edit }
        format.json { render json: @shouldersbicepshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouldersbicepshome2s/1
  # DELETE /shouldersbicepshome2s/1.json
  def destroy
    @shouldersbicepshome2.destroy
    respond_to do |format|
      format.html { redirect_to shouldersbicepshome2s_url, notice: 'Shouldersbicepshome2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shouldersbicepshome2
      @shouldersbicepshome2 = Shouldersbicepshome2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shouldersbicepshome2_params
      params.require(:shouldersbicepshome2).permit(:exercise, :reps, :sets)
    end
end
