class InteresController < ApplicationController
  before_action :set_intere, only: [:show, :edit, :update, :destroy]

  # GET /interes
  # GET /interes.json
  def index
    @interes = Intere.all
  end

  # GET /interes/1
  # GET /interes/1.json
  def show
  end

  # GET /interes/new
  def new
    @intere = Intere.new
  end

  # GET /interes/1/edit
  def edit
  end

  # POST /interes
  # POST /interes.json
  def create
    @intere = Intere.new(intere_params)

    respond_to do |format|
      if @intere.save
        format.html { redirect_to @intere, notice: 'Intere was successfully created.' }
        format.json { render :show, status: :created, location: @intere }
      else
        format.html { render :new }
        format.json { render json: @intere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interes/1
  # PATCH/PUT /interes/1.json
  def update
    respond_to do |format|
      if @intere.update(intere_params)
        format.html { redirect_to @intere, notice: 'Intere was successfully updated.' }
        format.json { render :show, status: :ok, location: @intere }
      else
        format.html { render :edit }
        format.json { render json: @intere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interes/1
  # DELETE /interes/1.json
  def destroy
    @intere.destroy
    respond_to do |format|
      format.html { redirect_to interes_url, notice: 'Intere was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intere
      @intere = Intere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intere_params
      params.require(:intere).permit(:usuario_id, :oferta_id, :motivo, :dinero, :material, :otro, :mensaje, :fecha)
    end
end
