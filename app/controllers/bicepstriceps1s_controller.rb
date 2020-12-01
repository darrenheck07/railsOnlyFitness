class Bicepstriceps1sController < ApplicationController
  before_action :set_bicepstriceps1, only: [:show, :edit, :update, :destroy]

  # GET /bicepstriceps1s
  # GET /bicepstriceps1s.json
  def index
    @bicepstriceps1s = Bicepstriceps1.all
  end

  # GET /bicepstriceps1s/1
  # GET /bicepstriceps1s/1.json
  def show
  end

  # GET /bicepstriceps1s/new
  def new
    @bicepstriceps1 = Bicepstriceps1.new
  end

  # GET /bicepstriceps1s/1/edit
  def edit
  end

  # POST /bicepstriceps1s
  # POST /bicepstriceps1s.json
  def create
    @bicepstriceps1 = Bicepstriceps1.new(bicepstriceps1_params)

    respond_to do |format|
      if @bicepstriceps1.save
        format.html { redirect_to @bicepstriceps1, notice: 'Bicepstriceps1 was successfully created.' }
        format.json { render :show, status: :created, location: @bicepstriceps1 }
      else
        format.html { render :new }
        format.json { render json: @bicepstriceps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicepstriceps1s/1
  # PATCH/PUT /bicepstriceps1s/1.json
  def update
    respond_to do |format|
      if @bicepstriceps1.update(bicepstriceps1_params)
        format.html { redirect_to "/bicepstriceps1s"}
        format.json { render :show, status: :ok, location: @bicepstriceps1 }
      else
        format.html { render :edit }
        format.json { render json: @bicepstriceps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicepstriceps1s/1
  # DELETE /bicepstriceps1s/1.json
  def destroy
    @bicepstriceps1.destroy
    respond_to do |format|
      format.html { redirect_to bicepstriceps1s_url, notice: 'Bicepstriceps1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicepstriceps1
      @bicepstriceps1 = Bicepstriceps1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bicepstriceps1_params
      params.require(:bicepstriceps1).permit(:exercise, :reps, :sets)
    end
end
