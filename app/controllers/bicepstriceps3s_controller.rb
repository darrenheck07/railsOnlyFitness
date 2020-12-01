class Bicepstriceps3sController < ApplicationController
  before_action :set_bicepstriceps3, only: [:show, :edit, :update, :destroy]

  # GET /bicepstriceps3s
  # GET /bicepstriceps3s.json
  def index
    @bicepstriceps3s = Bicepstriceps3.all
  end

  # GET /bicepstriceps3s/1
  # GET /bicepstriceps3s/1.json
  def show
  end

  # GET /bicepstriceps3s/new
  def new
    @bicepstriceps3 = Bicepstriceps3.new
  end

  # GET /bicepstriceps3s/1/edit
  def edit
  end

  # POST /bicepstriceps3s
  # POST /bicepstriceps3s.json
  def create
    @bicepstriceps3 = Bicepstriceps3.new(bicepstriceps3_params)

    respond_to do |format|
      if @bicepstriceps3.save
        format.html { redirect_to @bicepstriceps3, notice: 'Bicepstriceps3 was successfully created.' }
        format.json { render :show, status: :created, location: @bicepstriceps3 }
      else
        format.html { render :new }
        format.json { render json: @bicepstriceps3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicepstriceps3s/1
  # PATCH/PUT /bicepstriceps3s/1.json
  def update
    respond_to do |format|
      if @bicepstriceps3.update(bicepstriceps3_params)
        format.html { redirect_to "/bicepstriceps3s"}
        format.json { render :show, status: :ok, location: @bicepstriceps3 }
      else
        format.html { render :edit }
        format.json { render json: @bicepstriceps3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicepstriceps3s/1
  # DELETE /bicepstriceps3s/1.json
  def destroy
    @bicepstriceps3.destroy
    respond_to do |format|
      format.html { redirect_to bicepstriceps3s_url, notice: 'Bicepstriceps3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicepstriceps3
      @bicepstriceps3 = Bicepstriceps3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicepstriceps3_params
      params.require(:bicepstriceps3).permit(:exercise, :reps, :sets)
    end
end
