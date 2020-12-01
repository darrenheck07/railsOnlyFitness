class Bicepstricepshome2sController < ApplicationController
  before_action :set_bicepstricepshome2, only: [:show, :edit, :update, :destroy]

  # GET /bicepstricepshome2s
  # GET /bicepstricepshome2s.json
  def index
    @bicepstricepshome2s = Bicepstricepshome2.all
  end

  # GET /bicepstricepshome2s/1
  # GET /bicepstricepshome2s/1.json
  def show
  end

  # GET /bicepstricepshome2s/new
  def new
    @bicepstricepshome2 = Bicepstricepshome2.new
  end

  # GET /bicepstricepshome2s/1/edit
  def edit
  end

  # POST /bicepstricepshome2s
  # POST /bicepstricepshome2s.json
  def create
    @bicepstricepshome2 = Bicepstricepshome2.new(bicepstricepshome2_params)

    respond_to do |format|
      if @bicepstricepshome2.save
        format.html { redirect_to @bicepstricepshome2, notice: 'Bicepstricepshome2 was successfully created.' }
        format.json { render :show, status: :created, location: @bicepstricepshome2 }
      else
        format.html { render :new }
        format.json { render json: @bicepstricepshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicepstricepshome2s/1
  # PATCH/PUT /bicepstricepshome2s/1.json
  def update
    respond_to do |format|
      if @bicepstricepshome2.update(bicepstricepshome2_params)
         format.html { redirect_to "/bicepstricepshome2s"}
        format.json { render :show, status: :ok, location: @bicepstricepshome2 }
      else
        format.html { render :edit }
        format.json { render json: @bicepstricepshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicepstricepshome2s/1
  # DELETE /bicepstricepshome2s/1.json
  def destroy
    @bicepstricepshome2.destroy
    respond_to do |format|
      format.html { redirect_to bicepstricepshome2s_url, notice: 'Bicepstricepshome2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicepstricepshome2
      @bicepstricepshome2 = Bicepstricepshome2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicepstricepshome2_params
      params.require(:bicepstricepshome2).permit(:exercise, :reps, :sets)
    end
end
