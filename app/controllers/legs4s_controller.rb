class Legs4sController < ApplicationController
  before_action :set_legs4, only: [:show, :edit, :update, :destroy]

  # GET /legs4s
  # GET /legs4s.json
  def index
    @legs4s = Legs4.all
  end

  # GET /legs4s/1
  # GET /legs4s/1.json
  def show
  end

  # GET /legs4s/new
  def new
    @legs4 = Legs4.new
  end

  # GET /legs4s/1/edit
  def edit
  end

  # POST /legs4s
  # POST /legs4s.json
  def create
    @legs4 = Legs4.new(legs4_params)

    respond_to do |format|
      if @legs4.save
        format.html { redirect_to @legs4, notice: 'Legs4 was successfully created.' }
        format.json { render :show, status: :created, location: @legs4 }
      else
        format.html { render :new }
        format.json { render json: @legs4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legs4s/1
  # PATCH/PUT /legs4s/1.json
  def update
    respond_to do |format|
      if @legs4.update(legs4_params)
        format.html { redirect_to "/legs4s"}
        format.json { render :show, status: :ok, location: @legs4 }
      else
        format.html { render :edit }
        format.json { render json: @legs4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legs4s/1
  # DELETE /legs4s/1.json
  def destroy
    @legs4.destroy
    respond_to do |format|
      format.html { redirect_to legs4s_url, notice: 'Legs4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legs4
      @legs4 = Legs4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legs4_params
      params.require(:legs4).permit(:exercise, :reps, :sets)
    end
end
