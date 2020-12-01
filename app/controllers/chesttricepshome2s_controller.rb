class Chesttricepshome2sController < ApplicationController
  before_action :set_chesttricepshome2, only: [:show, :edit, :update, :destroy]

  # GET /chesttricepshome2s
  # GET /chesttricepshome2s.json
  def index
    @chesttricepshome2s = Chesttricepshome2.all
  end

  # GET /chesttricepshome2s/1
  # GET /chesttricepshome2s/1.json
  def show
  end

  # GET /chesttricepshome2s/new
  def new
    @chesttricepshome2 = Chesttricepshome2.new
  end

  # GET /chesttricepshome2s/1/edit
  def edit
  end

  # POST /chesttricepshome2s
  # POST /chesttricepshome2s.json
  def create
    @chesttricepshome2 = Chesttricepshome2.new(chesttricepshome2_params)

    respond_to do |format|
      if @chesttricepshome2.save
        format.html { redirect_to @chesttricepshome2, notice: 'Chesttricepshome2 was successfully created.' }
        format.json { render :show, status: :created, location: @chesttricepshome2 }
      else
        format.html { render :new }
        format.json { render json: @chesttricepshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chesttricepshome2s/1
  # PATCH/PUT /chesttricepshome2s/1.json
  def update
    respond_to do |format|
      if @chesttricepshome2.update(chesttricepshome2_params)
        format.html { redirect_to "/chesttricepshome2s"}
        format.json { render :show, status: :ok, location: @chesttricepshome2 }
      else
        format.html { render :edit }
        format.json { render json: @chesttricepshome2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chesttricepshome2s/1
  # DELETE /chesttricepshome2s/1.json
  def destroy
    @chesttricepshome2.destroy
    respond_to do |format|
      format.html { redirect_to chesttricepshome2s_url, notice: 'Chesttricepshome2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chesttricepshome2
      @chesttricepshome2 = Chesttricepshome2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chesttricepshome2_params
      params.require(:chesttricepshome2).permit(:exercise, :reps, :sets)
    end
end
