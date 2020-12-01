class Chesttriceps3sController < ApplicationController
  before_action :set_chesttriceps3, only: [:show, :edit, :update, :destroy]

  # GET /chesttriceps3s
  # GET /chesttriceps3s.json
  def index
    @chesttriceps3s = Chesttriceps3.all
  end

  # GET /chesttriceps3s/1
  # GET /chesttriceps3s/1.json
  def show
  end

  # GET /chesttriceps3s/new
  def new
    @chesttriceps3 = Chesttriceps3.new
  end

  # GET /chesttriceps3s/1/edit
  def edit
  end

  # POST /chesttriceps3s
  # POST /chesttriceps3s.json
  def create
    @chesttriceps3 = Chesttriceps3.new(chesttriceps3_params)

    respond_to do |format|
      if @chesttriceps3.save
        format.html { redirect_to @chesttriceps3, notice: 'Chesttriceps3 was successfully created.' }
        format.json { render :show, status: :created, location: @chesttriceps3 }
      else
        format.html { render :new }
        format.json { render json: @chesttriceps3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chesttriceps3s/1
  # PATCH/PUT /chesttriceps3s/1.json
  def update
    respond_to do |format|
      if @chesttriceps3.update(chesttriceps3_params)
        format.html { redirect_to "/chesttriceps3s"}
        format.json { render :show, status: :ok, location: @chesttriceps3 }
      else
        format.html { render :edit }
        format.json { render json: @chesttriceps3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chesttriceps3s/1
  # DELETE /chesttriceps3s/1.json
  def destroy
    @chesttriceps3.destroy
    respond_to do |format|
      format.html { redirect_to chesttriceps3s_url, notice: 'Chesttriceps3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chesttriceps3
      @chesttriceps3 = Chesttriceps3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chesttriceps3_params
      params.require(:chesttriceps3).permit(:exercise, :reps, :sets)
    end
end
