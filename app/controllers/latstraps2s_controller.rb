class Latstraps2sController < ApplicationController
  before_action :set_latstraps2, only: [:show, :edit, :update, :destroy]

  # GET /latstraps2s
  # GET /latstraps2s.json
  def index
    @latstraps2s = Latstraps2.all
  end

  # GET /latstraps2s/1
  # GET /latstraps2s/1.json
  def show
  end

  # GET /latstraps2s/new
  def new
    @latstraps2 = Latstraps2.new
  end

  # GET /latstraps2s/1/edit
  def edit
  end

  # POST /latstraps2s
  # POST /latstraps2s.json
  def create
    @latstraps2 = Latstraps2.new(latstraps2_params)

    respond_to do |format|
      if @latstraps2.save
        format.html { redirect_to @latstraps2, notice: 'Latstraps2 was successfully created.' }
        format.json { render :show, status: :created, location: @latstraps2 }
      else
        format.html { render :new }
        format.json { render json: @latstraps2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latstraps2s/1
  # PATCH/PUT /latstraps2s/1.json
  def update
    respond_to do |format|
      if @latstraps2.update(latstraps2_params)
        format.html { redirect_to "/latstraps2s"}
        format.json { render :show, status: :ok, location: @latstraps2 }
      else
        format.html { render :edit }
        format.json { render json: @latstraps2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latstraps2s/1
  # DELETE /latstraps2s/1.json
  def destroy
    @latstraps2.destroy
    respond_to do |format|
      format.html { redirect_to latstraps2s_url, notice: 'Latstraps2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latstraps2
      @latstraps2 = Latstraps2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latstraps2_params
      params.require(:latstraps2).permit(:exercise, :reps, :sets)
    end
end
