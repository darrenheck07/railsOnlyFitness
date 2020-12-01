class Chesttriceps2sController < ApplicationController
  before_action :set_chesttriceps2, only: [:show, :edit, :update, :destroy]

  # GET /chesttriceps2s
  # GET /chesttriceps2s.json
  def index
    @chesttriceps2s = Chesttriceps2.all
  end

  # GET /chesttriceps2s/1
  # GET /chesttriceps2s/1.json
  def show
  end

  # GET /chesttriceps2s/new
  def new
    @chesttriceps2 = Chesttriceps2.new
  end

  # GET /chesttriceps2s/1/edit
  def edit
  end

  # POST /chesttriceps2s
  # POST /chesttriceps2s.json
  def create
    @chesttriceps2 = Chesttriceps2.new(chesttriceps2_params)

    respond_to do |format|
      if @chesttriceps2.save
        format.html { redirect_to @chesttriceps2, notice: 'Chesttriceps2 was successfully created.' }
        format.json { render :show, status: :created, location: @chesttriceps2 }
      else
        format.html { render :new }
        format.json { render json: @chesttriceps2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chesttriceps2s/1
  # PATCH/PUT /chesttriceps2s/1.json
  def update
    respond_to do |format|
      if @chesttriceps2.update(chesttriceps2_params)
         format.html { redirect_to "/chesttriceps2s"}
        format.json { render :show, status: :ok, location: @chesttriceps2 }
      else
        format.html { render :edit }
        format.json { render json: @chesttriceps2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chesttriceps2s/1
  # DELETE /chesttriceps2s/1.json
  def destroy
    @chesttriceps2.destroy
    respond_to do |format|
      format.html { redirect_to chesttriceps2s_url, notice: 'Chesttriceps2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chesttriceps2
      @chesttriceps2 = Chesttriceps2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chesttriceps2_params
      params.require(:chesttriceps2).permit(:exercise, :reps, :sets)
    end
end
