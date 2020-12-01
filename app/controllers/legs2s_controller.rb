class Legs2sController < ApplicationController
  before_action :set_legs2, only: [:show, :edit, :update, :destroy]

  # GET /legs2s
  # GET /legs2s.json
  def index
    @legs2s = Legs2.all
  end

  # GET /legs2s/1
  # GET /legs2s/1.json
  def show
  end

  # GET /legs2s/new
  def new
    @legs2 = Legs2.new
  end

  # GET /legs2s/1/edit
  def edit
  end

  # POST /legs2s
  # POST /legs2s.json
  def create
    @legs2 = Legs2.new(legs2_params)

    respond_to do |format|
      if @legs2.save
        format.html { redirect_to @legs2, notice: 'Legs2 was successfully created.' }
        format.json { render :show, status: :created, location: @legs2 }
      else
        format.html { render :new }
        format.json { render json: @legs2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legs2s/1
  # PATCH/PUT /legs2s/1.json
  def update
    respond_to do |format|
      if @legs2.update(legs2_params)
        format.html { redirect_to "/legs2s"}
        format.json { render :show, status: :ok, location: @legs2 }
      else
        format.html { render :edit }
        format.json { render json: @legs2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legs2s/1
  # DELETE /legs2s/1.json
  def destroy
    @legs2.destroy
    respond_to do |format|
      format.html { redirect_to legs2s_url, notice: 'Legs2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legs2
      @legs2 = Legs2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legs2_params
      params.require(:legs2).permit(:exercise, :reps, :sets)
    end
end
