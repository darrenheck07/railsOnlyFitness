class Latstraps3sController < ApplicationController
  before_action :set_latstraps3, only: [:show, :edit, :update, :destroy]

  # GET /latstraps3s
  # GET /latstraps3s.json
  def index
    @latstraps3s = Latstraps3.all
  end

  # GET /latstraps3s/1
  # GET /latstraps3s/1.json
  def show
  end

  # GET /latstraps3s/new
  def new
    @latstraps3 = Latstraps3.new
  end

  # GET /latstraps3s/1/edit
  def edit
  end

  # POST /latstraps3s
  # POST /latstraps3s.json
  def create
    @latstraps3 = Latstraps3.new(latstraps3_params)

    respond_to do |format|
      if @latstraps3.save
        format.html { redirect_to @latstraps3, notice: 'Latstraps3 was successfully created.' }
        format.json { render :show, status: :created, location: @latstraps3 }
      else
        format.html { render :new }
        format.json { render json: @latstraps3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latstraps3s/1
  # PATCH/PUT /latstraps3s/1.json
  def update
    respond_to do |format|
      if @latstraps3.update(latstraps3_params)
        format.html { redirect_to "/latstraps3s"}
        format.json { render :show, status: :ok, location: @latstraps3 }
      else
        format.html { render :edit }
        format.json { render json: @latstraps3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latstraps3s/1
  # DELETE /latstraps3s/1.json
  def destroy
    @latstraps3.destroy
    respond_to do |format|
      format.html { redirect_to latstraps3s_url, notice: 'Latstraps3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latstraps3
      @latstraps3 = Latstraps3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latstraps3_params
      params.require(:latstraps3).permit(:exercise, :reps, :sets)
    end
end
