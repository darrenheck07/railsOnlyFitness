class Bicepstriceps2sController < ApplicationController
  before_action :set_bicepstriceps2, only: [:show, :edit, :update, :destroy]

  # GET /bicepstriceps2s
  # GET /bicepstriceps2s.json
  def index
    @bicepstriceps2s = Bicepstriceps2.all
  end

  # GET /bicepstriceps2s/1
  # GET /bicepstriceps2s/1.json
  def show
  end

  # GET /bicepstriceps2s/new
  def new
    @bicepstriceps2 = Bicepstriceps2.new
  end

  # GET /bicepstriceps2s/1/edit
  def edit
  end

  # POST /bicepstriceps2s
  # POST /bicepstriceps2s.json
  def create
    @bicepstriceps2 = Bicepstriceps2.new(bicepstriceps2_params)

    respond_to do |format|
      if @bicepstriceps2.save
        format.html { redirect_to @bicepstriceps2, notice: 'Bicepstriceps2 was successfully created.' }
        format.json { render :show, status: :created, location: @bicepstriceps2 }
      else
        format.html { render :new }
        format.json { render json: @bicepstriceps2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicepstriceps2s/1
  # PATCH/PUT /bicepstriceps2s/1.json
  def update
    respond_to do |format|
      if @bicepstriceps2.update(bicepstriceps2_params)
        format.html { redirect_to "/bicepstriceps2s"}
        format.json { render :show, status: :ok, location: @bicepstriceps2 }
      else
        format.html { render :edit }
        format.json { render json: @bicepstriceps2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicepstriceps2s/1
  # DELETE /bicepstriceps2s/1.json
  def destroy
    @bicepstriceps2.destroy
    respond_to do |format|
      format.html { redirect_to bicepstriceps2s_url, notice: 'Bicepstriceps2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicepstriceps2
      @bicepstriceps2 = Bicepstriceps2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicepstriceps2_params
      params.require(:bicepstriceps2).permit(:exercise, :reps, :sets)
    end
end
