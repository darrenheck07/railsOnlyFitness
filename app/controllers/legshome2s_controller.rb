class Legshome2sController < ApplicationController
  before_action :set_legshome2, only: [:show, :edit, :update, :destroy]

  # GET /legshome2s
  # GET /legshome2s.json
  def index
    @legshome2s = Legshome2.all
  end

  # GET /legshome2s/1
  # GET /legshome2s/1.json
  def show
  end

  # GET /legshome2s/new
  def new
    @legshome2 = Legshome2.new
  end

  # GET /legshome2s/1/edit
  def edit
  end

  # POST /legshome2s
  # POST /legshome2s.json
  def create
    @legshome2 = Legshome2.new(legshome2_params)

    respond_to do |format|
      if @legshome2.save
        format.html { redirect_to @legshome2, notice: 'Legshome2 was successfully created.' }
        format.json { render :show, status: :created, location: @legshome2 }
      else
        format.html { render :new }
        format.json { render json: @legshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legshome2s/1
  # PATCH/PUT /legshome2s/1.json
  def update
    respond_to do |format|
      if @legshome2.update(legshome2_params)
        format.html { redirect_to "/legshome2s"}
        format.json { render :show, status: :ok, location: @legshome2 }
      else
        format.html { render :edit }
        format.json { render json: @legshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legshome2s/1
  # DELETE /legshome2s/1.json
  def destroy
    @legshome2.destroy
    respond_to do |format|
      format.html { redirect_to legshome2s_url, notice: 'Legshome2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legshome2
      @legshome2 = Legshome2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legshome2_params
      params.require(:legshome2).permit(:exercise, :reps, :sets)
    end
end
