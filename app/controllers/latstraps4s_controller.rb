class Latstraps4sController < ApplicationController
  before_action :set_latstraps4, only: [:show, :edit, :update, :destroy]

  # GET /latstraps4s
  # GET /latstraps4s.json
  def index
    @latstraps4s = Latstraps4.all
  end

  # GET /latstraps4s/1
  # GET /latstraps4s/1.json
  def show
  end

  # GET /latstraps4s/new
  def new
    @latstraps4 = Latstraps4.new
  end

  # GET /latstraps4s/1/edit
  def edit
  end

  # POST /latstraps4s
  # POST /latstraps4s.json
  def create
    @latstraps4 = Latstraps4.new(latstraps4_params)

    respond_to do |format|
      if @latstraps4.save
        format.html { redirect_to @latstraps4, notice: 'Latstraps4 was successfully created.' }
        format.json { render :show, status: :created, location: @latstraps4 }
      else
        format.html { render :new }
        format.json { render json: @latstraps4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latstraps4s/1
  # PATCH/PUT /latstraps4s/1.json
  def update
    respond_to do |format|
      if @latstraps4.update(latstraps4_params)
       format.html { redirect_to "/latstraps4s"}
        format.json { render :show, status: :ok, location: @latstraps4 }
      else
        format.html { render :edit }
        format.json { render json: @latstraps4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latstraps4s/1
  # DELETE /latstraps4s/1.json
  def destroy
    @latstraps4.destroy
    respond_to do |format|
      format.html { redirect_to latstraps4s_url, notice: 'Latstraps4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latstraps4
      @latstraps4 = Latstraps4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latstraps4_params
      params.require(:latstraps4).permit(:exercise, :reps, :sets)
    end
end
