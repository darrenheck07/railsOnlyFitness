class Latstrapshome3sController < ApplicationController
  before_action :set_latstrapshome3, only: [:show, :edit, :update, :destroy]

  # GET /latstrapshome3s
  # GET /latstrapshome3s.json
  def index
    @latstrapshome3s = Latstrapshome3.all
  end

  # GET /latstrapshome3s/1
  # GET /latstrapshome3s/1.json
  def show
  end

  # GET /latstrapshome3s/new
  def new
    @latstrapshome3 = Latstrapshome3.new
  end

  # GET /latstrapshome3s/1/edit
  def edit
  end

  # POST /latstrapshome3s
  # POST /latstrapshome3s.json
  def create
    @latstrapshome3 = Latstrapshome3.new(latstrapshome3_params)

    respond_to do |format|
      if @latstrapshome3.save
        format.html { redirect_to @latstrapshome3, notice: 'Latstrapshome3 was successfully created.' }
        format.json { render :show, status: :created, location: @latstrapshome3 }
      else
        format.html { render :new }
        format.json { render json: @latstrapshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latstrapshome3s/1
  # PATCH/PUT /latstrapshome3s/1.json
  def update
    respond_to do |format|
      if @latstrapshome3.update(latstrapshome3_params)
         format.html { redirect_to "/latstrapshome3s"}
        format.json { render :show, status: :ok, location: @latstrapshome3 }
      else
        format.html { render :edit }
        format.json { render json: @latstrapshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latstrapshome3s/1
  # DELETE /latstrapshome3s/1.json
  def destroy
    @latstrapshome3.destroy
    respond_to do |format|
      format.html { redirect_to latstrapshome3s_url, notice: 'Latstrapshome3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latstrapshome3
      @latstrapshome3 = Latstrapshome3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latstrapshome3_params
      params.require(:latstrapshome3).permit(:exercise, :reps, :sets)
    end
end
