class Chesttricepshome4sController < ApplicationController
  before_action :set_chesttricepshome4, only: [:show, :edit, :update, :destroy]

  # GET /chesttricepshome4s
  # GET /chesttricepshome4s.json
  def index
    @chesttricepshome4s = Chesttricepshome4.all
  end

  # GET /chesttricepshome4s/1
  # GET /chesttricepshome4s/1.json
  def show
  end

  # GET /chesttricepshome4s/new
  def new
    @chesttricepshome4 = Chesttricepshome4.new
  end

  # GET /chesttricepshome4s/1/edit
  def edit
  end

  # POST /chesttricepshome4s
  # POST /chesttricepshome4s.json
  def create
    @chesttricepshome4 = Chesttricepshome4.new(chesttricepshome4_params)

    respond_to do |format|
      if @chesttricepshome4.save
        format.html { redirect_to @chesttricepshome4, notice: 'Chesttricepshome4 was successfully created.' }
        format.json { render :show, status: :created, location: @chesttricepshome4 }
      else
        format.html { render :new }
        format.json { render json: @chesttricepshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chesttricepshome4s/1
  # PATCH/PUT /chesttricepshome4s/1.json
  def update
    respond_to do |format|
      if @chesttricepshome4.update(chesttricepshome4_params)
        format.html { redirect_to "/chesttricepshome4s"}
        format.json { render :show, status: :ok, location: @chesttricepshome4 }
      else
        format.html { render :edit }
        format.json { render json: @chesttricepshome4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chesttricepshome4s/1
  # DELETE /chesttricepshome4s/1.json
  def destroy
    @chesttricepshome4.destroy
    respond_to do |format|
      format.html { redirect_to chesttricepshome4s_url, notice: 'Chesttricepshome4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chesttricepshome4
      @chesttricepshome4 = Chesttricepshome4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chesttricepshome4_params
      params.require(:chesttricepshome4).permit(:exercise, :reps, :sets)
    end
end
