class Shouldersbiceps1sController < ApplicationController
   before_action :authenticate_user!
  before_action :set_shouldersbiceps1, only: [:show, :edit, :update, :destroy]

  # GET /shouldersbiceps1s
  # GET /shouldersbiceps1s.json
  def index
    @shouldersbiceps1s = Shouldersbiceps1.all
  end

  # GET /shouldersbiceps1s/1
  # GET /shouldersbiceps1s/1.json
  def show
  end

  # GET /shouldersbiceps1s/new
  def new
    @shouldersbiceps1 = Shouldersbiceps1.new
  end

  # GET /shouldersbiceps1s/1/edit
  def edit
  end

  # POST /shouldersbiceps1s
  # POST /shouldersbiceps1s.json
  def create
    @shouldersbiceps1 = Shouldersbiceps1.new(shouldersbiceps1_params)

    respond_to do |format|
      if @shouldersbiceps1.save
        format.html { redirect_to @shouldersbiceps1, notice: 'Shouldersbiceps1 was successfully created.' }
        format.json { render :show, status: :created, location: @shouldersbiceps1 }
      else
        format.html { render :new }
        format.json { render json: @shouldersbiceps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shouldersbiceps1s/1
  # PATCH/PUT /shouldersbiceps1s/1.json
  def update
    respond_to do |format|
      if @shouldersbiceps1.update(shouldersbiceps1_params)
        format.html { redirect_to @shouldersbiceps1, notice: 'Shouldersbiceps1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @shouldersbiceps1 }
      else
        format.html { render :edit }
        format.json { render json: @shouldersbiceps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shouldersbiceps1s/1
  # DELETE /shouldersbiceps1s/1.json
  def destroy
    @shouldersbiceps1.destroy
    respond_to do |format|
      format.html { redirect_to shouldersbiceps1s_url, notice: 'Shouldersbiceps1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shouldersbiceps1
      @shouldersbiceps1 = Shouldersbiceps1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shouldersbiceps1_params
      params.require(:shouldersbiceps1).permit(:exercise, :reps, :sets)
    end
end
