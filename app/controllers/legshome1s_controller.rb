class Legshome1sController < ApplicationController
  before_action :set_legshome1, only: [:show, :edit, :update, :destroy]

  # GET /legshome1s
  # GET /legshome1s.json
  def index
    @legshome1s = Legshome1.all
  end

  # GET /legshome1s/1
  # GET /legshome1s/1.json
  def show
  end

  # GET /legshome1s/new
  def new
    @legshome1 = Legshome1.new
  end

  # GET /legshome1s/1/edit
  def edit
  end

  # POST /legshome1s
  # POST /legshome1s.json
  def create
    @legshome1 = Legshome1.new(legshome1_params)

    respond_to do |format|
      if @legshome1.save
        format.html { redirect_to @legshome1, notice: 'Legshome1 was successfully created.' }
        format.json { render :show, status: :created, location: @legshome1 }
      else
        format.html { render :new }
        format.json { render json: @legshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legshome1s/1
  # PATCH/PUT /legshome1s/1.json
  def update
    respond_to do |format|
      if @legshome1.update(legshome1_params)
        format.html { redirect_to "/legshome1s"}
        format.json { render :show, status: :ok, location: @legshome1 }
      else
        format.html { render :edit }
        format.json { render json: @legshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legshome1s/1
  # DELETE /legshome1s/1.json
  def destroy
    @legshome1.destroy
    respond_to do |format|
      format.html { redirect_to legshome1s_url, notice: 'Legshome1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legshome1
      @legshome1 = Legshome1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legshome1_params
      params.require(:legshome1).permit(:exercise, :reps, :sets)
    end
end
