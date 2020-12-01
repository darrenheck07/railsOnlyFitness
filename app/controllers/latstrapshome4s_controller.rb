class Latstrapshome4sController < ApplicationController
  before_action :set_latstrapshome4, only: [:show, :edit, :update, :destroy]

  # GET /latstrapshome4s
  # GET /latstrapshome4s.json
  def index
    @latstrapshome4s = Latstrapshome4.all
  end

  # GET /latstrapshome4s/1
  # GET /latstrapshome4s/1.json
  def show
  end

  # GET /latstrapshome4s/new
  def new
    @latstrapshome4 = Latstrapshome4.new
  end

  # GET /latstrapshome4s/1/edit
  def edit
  end

  # POST /latstrapshome4s
  # POST /latstrapshome4s.json
  def create
    @latstrapshome4 = Latstrapshome4.new(latstrapshome4_params)

    respond_to do |format|
      if @latstrapshome4.save
        format.html { redirect_to @latstrapshome4, notice: 'Latstrapshome4 was successfully created.' }
        format.json { render :show, status: :created, location: @latstrapshome4 }
      else
        format.html { render :new }
        format.json { render json: @latstrapshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latstrapshome4s/1
  # PATCH/PUT /latstrapshome4s/1.json
  def update
    respond_to do |format|
      if @latstrapshome4.update(latstrapshome4_params)
        format.html { redirect_to "/latstrapshome4s"}
        format.json { render :show, status: :ok, location: @latstrapshome4 }
      else
        format.html { render :edit }
        format.json { render json: @latstrapshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latstrapshome4s/1
  # DELETE /latstrapshome4s/1.json
  def destroy
    @latstrapshome4.destroy
    respond_to do |format|
      format.html { redirect_to latstrapshome4s_url, notice: 'Latstrapshome4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latstrapshome4
      @latstrapshome4 = Latstrapshome4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latstrapshome4_params
      params.require(:latstrapshome4).permit(:exercise, :reps, :sets)
    end
end
