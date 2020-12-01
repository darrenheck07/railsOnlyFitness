class Chesttricepshome3sController < ApplicationController
  before_action :set_chesttricepshome3, only: [:show, :edit, :update, :destroy]

  # GET /chesttricepshome3s
  # GET /chesttricepshome3s.json
  def index
    @chesttricepshome3s = Chesttricepshome3.all
  end

  # GET /chesttricepshome3s/1
  # GET /chesttricepshome3s/1.json
  def show
  end

  # GET /chesttricepshome3s/new
  def new
    @chesttricepshome3 = Chesttricepshome3.new
  end

  # GET /chesttricepshome3s/1/edit
  def edit
  end

  # POST /chesttricepshome3s
  # POST /chesttricepshome3s.json
  def create
    @chesttricepshome3 = Chesttricepshome3.new(chesttricepshome3_params)

    respond_to do |format|
      if @chesttricepshome3.save
        format.html { redirect_to @chesttricepshome3, notice: 'Chesttricepshome3 was successfully created.' }
        format.json { render :show, status: :created, location: @chesttricepshome3 }
      else
        format.html { render :new }
        format.json { render json: @chesttricepshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chesttricepshome3s/1
  # PATCH/PUT /chesttricepshome3s/1.json
  def update
    respond_to do |format|
      if @chesttricepshome3.update(chesttricepshome3_params)
        format.html { redirect_to "/chesttricepshome3s"}
        format.json { render :show, status: :ok, location: @chesttricepshome3 }
      else
        format.html { render :edit }
        format.json { render json: @chesttricepshome3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chesttricepshome3s/1
  # DELETE /chesttricepshome3s/1.json
  def destroy
    @chesttricepshome3.destroy
    respond_to do |format|
      format.html { redirect_to chesttricepshome3s_url, notice: 'Chesttricepshome3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chesttricepshome3
      @chesttricepshome3 = Chesttricepshome3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chesttricepshome3_params
      params.require(:chesttricepshome3).permit(:exercise, :reps, :sets)
    end
end
