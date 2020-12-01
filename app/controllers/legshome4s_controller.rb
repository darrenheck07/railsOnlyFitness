class Legshome4sController < ApplicationController
  before_action :set_legshome4, only: [:show, :edit, :update, :destroy]

  # GET /legshome4s
  # GET /legshome4s.json
  def index
    @legshome4s = Legshome4.all
  end

  # GET /legshome4s/1
  # GET /legshome4s/1.json
  def show
  end

  # GET /legshome4s/new
  def new
    @legshome4 = Legshome4.new
  end

  # GET /legshome4s/1/edit
  def edit
  end

  # POST /legshome4s
  # POST /legshome4s.json
  def create
    @legshome4 = Legshome4.new(legshome4_params)

    respond_to do |format|
      if @legshome4.save
        format.html { redirect_to @legshome4, notice: 'Legshome4 was successfully created.' }
        format.json { render :show, status: :created, location: @legshome4 }
      else
        format.html { render :new }
        format.json { render json: @legshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legshome4s/1
  # PATCH/PUT /legshome4s/1.json
  def update
    respond_to do |format|
      if @legshome4.update(legshome4_params)
        format.html { redirect_to "/legshome4s"}
        format.json { render :show, status: :ok, location: @legshome4 }
      else
        format.html { render :edit }
        format.json { render json: @legshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legshome4s/1
  # DELETE /legshome4s/1.json
  def destroy
    @legshome4.destroy
    respond_to do |format|
      format.html { redirect_to legshome4s_url, notice: 'Legshome4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legshome4
      @legshome4 = Legshome4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legshome4_params
      params.require(:legshome4).permit(:exercise, :reps, :sets)
    end
end
