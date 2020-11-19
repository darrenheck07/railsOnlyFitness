class ChestTriceps1sController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chest_triceps1, only: [:show, :edit, :update, :destroy]

  # GET /chest_triceps1s
  # GET /chest_triceps1s.json
  def index
    @chest_triceps1s = ChestTriceps1.all
  end

  # GET /chest_triceps1s/1
  # GET /chest_triceps1s/1.json
  def show
  end

  # GET /chest_triceps1s/new
  def new
    @chest_triceps1 = ChestTriceps1.new
  end

  # GET /chest_triceps1s/1/edit
  def edit
  end

  # POST /chest_triceps1s
  # POST /chest_triceps1s.json
  def create
    @chest_triceps1 = ChestTriceps1.new(chest_triceps1_params)

    respond_to do |format|
      if @chest_triceps1.save
        format.html { redirect_to @chest_triceps1, notice: 'Chest/Triceps 1 was successfully created.' }
        format.json { render :show, status: :created, location: @chest_triceps1 }
      else
        format.html { render :new }
        format.json { render json: @chest_triceps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chest_triceps1s/1
  # PATCH/PUT /chest_triceps1s/1.json
  def update
    respond_to do |format|
      if @chest_triceps1.update(chest_triceps1_params)
        format.html { redirect_to @chest_triceps1, notice: 'Chest/Triceps 1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @chest_triceps1 }
      else
        format.html { render :edit }
        format.json { render json: @chest_triceps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chest_triceps1s/1
  # DELETE /chest_triceps1s/1.json
  def destroy
    @chest_triceps1.destroy
    respond_to do |format|
      format.html { redirect_to chest_triceps1s_url, notice: 'Chest/Triceps 1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chest_triceps1
      @chest_triceps1 = ChestTriceps1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chest_triceps1_params
      params.require(:chest_triceps1).permit(:exercise, :reps, :sets)
    end
end
