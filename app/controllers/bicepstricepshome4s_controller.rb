class Bicepstricepshome4sController < ApplicationController
  before_action :set_bicepstricepshome4, only: [:show, :edit, :update, :destroy]

  # GET /bicepstricepshome4s
  # GET /bicepstricepshome4s.json
  def index
    @bicepstricepshome4s = Bicepstricepshome4.all
  end

  # GET /bicepstricepshome4s/1
  # GET /bicepstricepshome4s/1.json
  def show
  end

  # GET /bicepstricepshome4s/new
  def new
    @bicepstricepshome4 = Bicepstricepshome4.new
  end

  # GET /bicepstricepshome4s/1/edit
  def edit
  end

  # POST /bicepstricepshome4s
  # POST /bicepstricepshome4s.json
  def create
    @bicepstricepshome4 = Bicepstricepshome4.new(bicepstricepshome4_params)

    respond_to do |format|
      if @bicepstricepshome4.save
        format.html { redirect_to @bicepstricepshome4, notice: 'Bicepstricepshome4 was successfully created.' }
        format.json { render :show, status: :created, location: @bicepstricepshome4 }
      else
        format.html { render :new }
        format.json { render json: @bicepstricepshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicepstricepshome4s/1
  # PATCH/PUT /bicepstricepshome4s/1.json
  def update
    respond_to do |format|
      if @bicepstricepshome4.update(bicepstricepshome4_params)
         format.html { redirect_to "/bicepstricepshome4s"}
        format.json { render :show, status: :ok, location: @bicepstricepshome4 }
      else
        format.html { render :edit }
        format.json { render json: @bicepstricepshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicepstricepshome4s/1
  # DELETE /bicepstricepshome4s/1.json
  def destroy
    @bicepstricepshome4.destroy
    respond_to do |format|
      format.html { redirect_to bicepstricepshome4s_url, notice: 'Bicepstricepshome4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicepstricepshome4
      @bicepstricepshome4 = Bicepstricepshome4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicepstricepshome4_params
      params.require(:bicepstricepshome4).permit(:exercise, :reps, :sets)
    end
end
