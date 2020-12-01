class Legs1sController < ApplicationController
  before_action :set_legs1, only: [:show, :edit, :update, :destroy]

  # GET /legs1s
  # GET /legs1s.json
  def index
    @legs1s = Legs1.all
  end

  # GET /legs1s/1
  # GET /legs1s/1.json
  def show
  end

  # GET /legs1s/new
  def new
    @legs1 = Legs1.new
  end

  # GET /legs1s/1/edit
  def edit
  end

  # POST /legs1s
  # POST /legs1s.json
  def create
    @legs1 = Legs1.new(legs1_params)

    respond_to do |format|
      if @legs1.save
        format.html { redirect_to @legs1, notice: 'Legs1 was successfully created.' }
        format.json { render :show, status: :created, location: @legs1 }
      else
        format.html { render :new }
        format.json { render json: @legs1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legs1s/1
  # PATCH/PUT /legs1s/1.json
  def update
    respond_to do |format|
      if @legs1.update(legs1_params)
         format.html { redirect_to "/legs1s"}
        format.json { render :show, status: :ok, location: @legs1 }
      else
        format.html { render :edit }
        format.json { render json: @legs1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legs1s/1
  # DELETE /legs1s/1.json
  def destroy
    @legs1.destroy
    respond_to do |format|
      format.html { redirect_to legs1s_url, notice: 'Legs1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legs1
      @legs1 = Legs1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legs1_params
      params.require(:legs1).permit(:exercise, :reps, :sets)
    end
end
