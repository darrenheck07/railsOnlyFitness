class Latstraps1sController < ApplicationController
   before_action :authenticate_user!
  before_action :set_latstraps1, only: [:show, :edit, :update, :destroy]

  # GET /latstraps1s
  # GET /latstraps1s.json
  def index
    @latstraps1s = Latstraps1.all
  end

  # GET /latstraps1s/1
  # GET /latstraps1s/1.json
  def show
  end

  # GET /latstraps1s/new
  def new
    @latstraps1 = Latstraps1.new
  end

  # GET /latstraps1s/1/edit
  def edit
  end

  # POST /latstraps1s
  # POST /latstraps1s.json
  def create
    @latstraps1 = Latstraps1.new(latstraps1_params)

    respond_to do |format|
      if @latstraps1.save
        format.html { redirect_to @latstraps1, notice: 'Latstraps1 was successfully created.' }
        format.json { render :show, status: :created, location: @latstraps1 }
      else
        format.html { render :new }
        format.json { render json: @latstraps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latstraps1s/1
  # PATCH/PUT /latstraps1s/1.json
  def update
    respond_to do |format|
      if @latstraps1.update(latstraps1_params)
        format.html { redirect_to "/latstraps1s"}
        format.json { render :show, status: :ok, location: @latstraps1 }
      else
        format.html { render :edit }
        format.json { render json: @latstraps1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latstraps1s/1
  # DELETE /latstraps1s/1.json
  def destroy
    @latstraps1.destroy
    respond_to do |format|
      format.html { redirect_to latstraps1s_url, notice: 'Latstraps1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latstraps1
      @latstraps1 = Latstraps1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latstraps1_params
      params.require(:latstraps1).permit(:exercise, :reps, :sets)
    end
end
