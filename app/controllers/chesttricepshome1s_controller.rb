class Chesttricepshome1sController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chesttricepshome1, only: [:show, :edit, :update, :destroy]

  # GET /chesttricepshome1s
  # GET /chesttricepshome1s.json
  def index
    @chesttricepshome1s = Chesttricepshome1.all
  end

  # GET /chesttricepshome1s/1
  # GET /chesttricepshome1s/1.json
  def show
  end

  # GET /chesttricepshome1s/new
  def new
    @chesttricepshome1 = Chesttricepshome1.new
  end

  # GET /chesttricepshome1s/1/edit
  def edit
  end

  # POST /chesttricepshome1s
  # POST /chesttricepshome1s.json
  def create
    @chesttricepshome1 = Chesttricepshome1.new(chesttricepshome1_params)

    respond_to do |format|
      if @chesttricepshome1.save
        format.html { redirect_to @chesttricepshome1, notice: 'Chesttricepshome1 was successfully created.' }
        format.json { render :show, status: :created, location: @chesttricepshome1 }
      else
        format.html { render :new }
        format.json { render json: @chesttricepshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chesttricepshome1s/1
  # PATCH/PUT /chesttricepshome1s/1.json
  def update
    respond_to do |format|
      if @chesttricepshome1.update(chesttricepshome1_params)
        format.html { redirect_to "/chesttricepshome1s"}
        format.json { render :show, status: :ok, location: @chesttricepshome1 }
      else
        format.html { render :edit }
        format.json { render json: @chesttricepshome1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chesttricepshome1s/1
  # DELETE /chesttricepshome1s/1.json
  def destroy
    @chesttricepshome1.destroy
    respond_to do |format|
      format.html { redirect_to chesttricepshome1s_url, notice: 'Chesttricepshome1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chesttricepshome1
      @chesttricepshome1 = Chesttricepshome1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chesttricepshome1_params
      params.require(:chesttricepshome1).permit(:exercise, :reps, :sets)
    end
end
