class Latstrapshome2sController < ApplicationController
  before_action :set_latstrapshome2, only: [:show, :edit, :update, :destroy]

  # GET /latstrapshome2s
  # GET /latstrapshome2s.json
  def index
    @latstrapshome2s = Latstrapshome2.all
  end

  # GET /latstrapshome2s/1
  # GET /latstrapshome2s/1.json
  def show
  end

  # GET /latstrapshome2s/new
  def new
    @latstrapshome2 = Latstrapshome2.new
  end

  # GET /latstrapshome2s/1/edit
  def edit
  end

  # POST /latstrapshome2s
  # POST /latstrapshome2s.json
  def create
    @latstrapshome2 = Latstrapshome2.new(latstrapshome2_params)

    respond_to do |format|
      if @latstrapshome2.save
        format.html { redirect_to @latstrapshome2, notice: 'Latstrapshome2 was successfully created.' }
        format.json { render :show, status: :created, location: @latstrapshome2 }
      else
        format.html { render :new }
        format.json { render json: @latstrapshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latstrapshome2s/1
  # PATCH/PUT /latstrapshome2s/1.json
  def update
    respond_to do |format|
      if @latstrapshome2.update(latstrapshome2_params)
         format.html { redirect_to "/latstrapshome2s"}
        format.json { render :show, status: :ok, location: @latstrapshome2 }
      else
        format.html { render :edit }
        format.json { render json: @latstrapshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latstrapshome2s/1
  # DELETE /latstrapshome2s/1.json
  def destroy
    @latstrapshome2.destroy
    respond_to do |format|
      format.html { redirect_to latstrapshome2s_url, notice: 'Latstrapshome2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latstrapshome2
      @latstrapshome2 = Latstrapshome2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latstrapshome2_params
      params.require(:latstrapshome2).permit(:exercise, :reps, :sets)
    end
end
