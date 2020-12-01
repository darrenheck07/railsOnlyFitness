class Legshome3sController < ApplicationController
  before_action :set_legshome3, only: [:show, :edit, :update, :destroy]

  # GET /legshome3s
  # GET /legshome3s.json
  def index
    @legshome3s = Legshome3.all
  end

  # GET /legshome3s/1
  # GET /legshome3s/1.json
  def show
  end

  # GET /legshome3s/new
  def new
    @legshome3 = Legshome3.new
  end

  # GET /legshome3s/1/edit
  def edit
  end

  # POST /legshome3s
  # POST /legshome3s.json
  def create
    @legshome3 = Legshome3.new(legshome3_params)

    respond_to do |format|
      if @legshome3.save
        format.html { redirect_to @legshome3, notice: 'Legshome3 was successfully created.' }
        format.json { render :show, status: :created, location: @legshome3 }
      else
        format.html { render :new }
        format.json { render json: @legshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legshome3s/1
  # PATCH/PUT /legshome3s/1.json
  def update
    respond_to do |format|
      if @legshome3.update(legshome3_params)
        format.html { redirect_to "/legshome3s"}
        format.json { render :show, status: :ok, location: @legshome3 }
      else
        format.html { render :edit }
        format.json { render json: @legshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legshome3s/1
  # DELETE /legshome3s/1.json
  def destroy
    @legshome3.destroy
    respond_to do |format|
      format.html { redirect_to legshome3s_url, notice: 'Legshome3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legshome3
      @legshome3 = Legshome3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legshome3_params
      params.require(:legshome3).permit(:exercise, :reps, :sets)
    end
end
