class Legs3sController < ApplicationController
  before_action :set_legs3, only: [:show, :edit, :update, :destroy]

  # GET /legs3s
  # GET /legs3s.json
  def index
    @legs3s = Legs3.all
  end

  # GET /legs3s/1
  # GET /legs3s/1.json
  def show
  end

  # GET /legs3s/new
  def new
    @legs3 = Legs3.new
  end

  # GET /legs3s/1/edit
  def edit
  end

  # POST /legs3s
  # POST /legs3s.json
  def create
    @legs3 = Legs3.new(legs3_params)

    respond_to do |format|
      if @legs3.save
        format.html { redirect_to @legs3, notice: 'Legs3 was successfully created.' }
        format.json { render :show, status: :created, location: @legs3 }
      else
        format.html { render :new }
        format.json { render json: @legs3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legs3s/1
  # PATCH/PUT /legs3s/1.json
  def update
    respond_to do |format|
      if @legs3.update(legs3_params)
        format.html { redirect_to "/legs3s"}
        format.json { render :show, status: :ok, location: @legs3 }
      else
        format.html { render :edit }
        format.json { render json: @legs3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legs3s/1
  # DELETE /legs3s/1.json
  def destroy
    @legs3.destroy
    respond_to do |format|
      format.html { redirect_to legs3s_url, notice: 'Legs3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legs3
      @legs3 = Legs3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legs3_params
      params.require(:legs3).permit(:exercise, :reps, :sets)
    end
end
