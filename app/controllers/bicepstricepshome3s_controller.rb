class Bicepstricepshome3sController < ApplicationController
  before_action :set_bicepstricepshome3, only: [:show, :edit, :update, :destroy]

  # GET /bicepstricepshome3s
  # GET /bicepstricepshome3s.json
  def index
    @bicepstricepshome3s = Bicepstricepshome3.all
  end

  # GET /bicepstricepshome3s/1
  # GET /bicepstricepshome3s/1.json
  def show
  end

  # GET /bicepstricepshome3s/new
  def new
    @bicepstricepshome3 = Bicepstricepshome3.new
  end

  # GET /bicepstricepshome3s/1/edit
  def edit
  end

  # POST /bicepstricepshome3s
  # POST /bicepstricepshome3s.json
  def create
    @bicepstricepshome3 = Bicepstricepshome3.new(bicepstricepshome3_params)

    respond_to do |format|
      if @bicepstricepshome3.save
        format.html { redirect_to @bicepstricepshome3, notice: 'Bicepstricepshome3 was successfully created.' }
        format.json { render :show, status: :created, location: @bicepstricepshome3 }
      else
        format.html { render :new }
        format.json { render json: @bicepstricepshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicepstricepshome3s/1
  # PATCH/PUT /bicepstricepshome3s/1.json
  def update
    respond_to do |format|
      if @bicepstricepshome3.update(bicepstricepshome3_params)
         format.html { redirect_to "/bicepstricepshome3s"}
        format.json { render :show, status: :ok, location: @bicepstricepshome3 }
      else
        format.html { render :edit }
        format.json { render json: @bicepstricepshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicepstricepshome3s/1
  # DELETE /bicepstricepshome3s/1.json
  def destroy
    @bicepstricepshome3.destroy
    respond_to do |format|
      format.html { redirect_to bicepstricepshome3s_url, notice: 'Bicepstricepshome3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicepstricepshome3
      @bicepstricepshome3 = Bicepstricepshome3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicepstricepshome3_params
      params.require(:bicepstricepshome3).permit(:exercise, :reps, :sets)
    end
end
