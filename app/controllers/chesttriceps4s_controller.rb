class Chesttriceps4sController < ApplicationController
  before_action :set_chesttriceps4, only: [:show, :edit, :update, :destroy]

  # GET /chesttriceps4s
  # GET /chesttriceps4s.json
  def index
    @chesttriceps4s = Chesttriceps4.all
  end

  # GET /chesttriceps4s/1
  # GET /chesttriceps4s/1.json
  def show
  end

  # GET /chesttriceps4s/new
  def new
    @chesttriceps4 = Chesttriceps4.new
  end

  # GET /chesttriceps4s/1/edit
  def edit
  end

  # POST /chesttriceps4s
  # POST /chesttriceps4s.json
  def create
    @chesttriceps4 = Chesttriceps4.new(chesttriceps4_params)

    respond_to do |format|
      if @chesttriceps4.save
        format.html { redirect_to @chesttriceps4, notice: 'Chesttriceps4 was successfully created.' }
        format.json { render :show, status: :created, location: @chesttriceps4 }
      else
        format.html { render :new }
        format.json { render json: @chesttriceps4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chesttriceps4s/1
  # PATCH/PUT /chesttriceps4s/1.json
  def update
    respond_to do |format|
      if @chesttriceps4.update(chesttriceps4_params)
        format.html { redirect_to "/chesttriceps4s"}
        format.json { render :show, status: :ok, location: @chesttriceps4 }
      else
        format.html { render :edit }
        format.json { render json: @chesttriceps4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chesttriceps4s/1
  # DELETE /chesttriceps4s/1.json
  def destroy
    @chesttriceps4.destroy
    respond_to do |format|
      format.html { redirect_to chesttriceps4s_url, notice: 'Chesttriceps4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chesttriceps4
      @chesttriceps4 = Chesttriceps4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chesttriceps4_params
      params.require(:chesttriceps4).permit(:exercise, :reps, :sets)
    end
end
