class Latstrapshome1sController < ApplicationController
   before_action :authenticate_user!
  before_action :set_latstrapshome1, only: [:show, :edit, :update, :destroy]

  # GET /latstrapshome1s
  # GET /latstrapshome1s.json
  def index
    @latstrapshome1s = Latstrapshome1.all
  end

  # GET /latstrapshome1s/1
  # GET /latstrapshome1s/1.json
  def show
  end

  # GET /latstrapshome1s/new
  def new
    @latstrapshome1 = Latstrapshome1.new
  end

  # GET /latstrapshome1s/1/edit
  def edit
  end

  # POST /latstrapshome1s
  # POST /latstrapshome1s.json
  def create
    @latstrapshome1 = Latstrapshome1.new(latstrapshome1_params)

    respond_to do |format|
      if @latstrapshome1.save
        format.html { redirect_to @latstrapshome1, notice: 'Latstrapshome1 was successfully created.' }
        format.json { render :show, status: :created, location: @latstrapshome1 }
      else
        format.html { render :new }
        format.json { render json: @latstrapshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latstrapshome1s/1
  # PATCH/PUT /latstrapshome1s/1.json
  def update
    respond_to do |format|
      if @latstrapshome1.update(latstrapshome1_params)
        format.html { redirect_to "/latstrapshome1s"}
        format.json { render :show, status: :ok, location: @latstrapshome1 }
      else
        format.html { render :edit }
        format.json { render json: @latstrapshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latstrapshome1s/1
  # DELETE /latstrapshome1s/1.json
  def destroy
    @latstrapshome1.destroy
    respond_to do |format|
      format.html { redirect_to latstrapshome1s_url, notice: 'Latstrapshome1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latstrapshome1
      @latstrapshome1 = Latstrapshome1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latstrapshome1_params
      params.require(:latstrapshome1).permit(:exercise, :reps, :sets)
    end
end
