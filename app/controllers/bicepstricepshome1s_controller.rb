class Bicepstricepshome1sController < ApplicationController
  before_action :set_bicepstricepshome1, only: [:show, :edit, :update, :destroy]

  # GET /bicepstricepshome1s
  # GET /bicepstricepshome1s.json
  def index
    @bicepstricepshome1s = Bicepstricepshome1.all
  end

  # GET /bicepstricepshome1s/1
  # GET /bicepstricepshome1s/1.json
  def show
  end

  # GET /bicepstricepshome1s/new
  def new
    @bicepstricepshome1 = Bicepstricepshome1.new
  end

  # GET /bicepstricepshome1s/1/edit
  def edit
  end

  # POST /bicepstricepshome1s
  # POST /bicepstricepshome1s.json
  def create
    @bicepstricepshome1 = Bicepstricepshome1.new(bicepstricepshome1_params)

    respond_to do |format|
      if @bicepstricepshome1.save
        format.html { redirect_to @bicepstricepshome1, notice: 'Bicepstricepshome1 was successfully created.' }
        format.json { render :show, status: :created, location: @bicepstricepshome1 }
      else
        format.html { render :new }
        format.json { render json: @bicepstricepshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicepstricepshome1s/1
  # PATCH/PUT /bicepstricepshome1s/1.json
  def update
    respond_to do |format|
      if @bicepstricepshome1.update(bicepstricepshome1_params)
        format.html { redirect_to "/bicepstricepshome1s"}
        format.json { render :show, status: :ok, location: @bicepstricepshome1 }
      else
        format.html { render :edit }
        format.json { render json: @bicepstricepshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicepstricepshome1s/1
  # DELETE /bicepstricepshome1s/1.json
  def destroy
    @bicepstricepshome1.destroy
    respond_to do |format|
      format.html { redirect_to bicepstricepshome1s_url, notice: 'Bicepstricepshome1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicepstricepshome1
      @bicepstricepshome1 = Bicepstricepshome1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicepstricepshome1_params
      params.require(:bicepstricepshome1).permit(:exercise, :reps, :sets)
    end
end
