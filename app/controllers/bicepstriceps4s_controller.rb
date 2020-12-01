class Bicepstriceps4sController < ApplicationController
  before_action :set_bicepstriceps4, only: [:show, :edit, :update, :destroy]

  # GET /bicepstriceps4s
  # GET /bicepstriceps4s.json
  def index
    @bicepstriceps4s = Bicepstriceps4.all
  end

  # GET /bicepstriceps4s/1
  # GET /bicepstriceps4s/1.json
  def show
  end

  # GET /bicepstriceps4s/new
  def new
    @bicepstriceps4 = Bicepstriceps4.new
  end

  # GET /bicepstriceps4s/1/edit
  def edit
  end

  # POST /bicepstriceps4s
  # POST /bicepstriceps4s.json
  def create
    @bicepstriceps4 = Bicepstriceps4.new(bicepstriceps4_params)

    respond_to do |format|
      if @bicepstriceps4.save
        format.html { redirect_to @bicepstriceps4, notice: 'Bicepstriceps4 was successfully created.' }
        format.json { render :show, status: :created, location: @bicepstriceps4 }
      else
        format.html { render :new }
        format.json { render json: @bicepstriceps4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicepstriceps4s/1
  # PATCH/PUT /bicepstriceps4s/1.json
  def update
    respond_to do |format|
      if @bicepstriceps4.update(bicepstriceps4_params)
        format.html { redirect_to "/bicepstriceps4s"}
        format.json { render :show, status: :ok, location: @bicepstriceps4 }
      else
        format.html { render :edit }
        format.json { render json: @bicepstriceps4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicepstriceps4s/1
  # DELETE /bicepstriceps4s/1.json
  def destroy
    @bicepstriceps4.destroy
    respond_to do |format|
      format.html { redirect_to bicepstriceps4s_url, notice: 'Bicepstriceps4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicepstriceps4
      @bicepstriceps4 = Bicepstriceps4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicepstriceps4_params
      params.require(:bicepstriceps4).permit(:exercise, :reps, :sets)
    end
end
