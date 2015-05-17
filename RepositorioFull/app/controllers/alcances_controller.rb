class AlcancesController < ApplicationController
  before_action :set_alcance, only: [:show, :edit, :update, :destroy]

  # GET /alcances
  # GET /alcances.json
  def index
    @alcances = Alcance.all
  end

  # GET /alcances/1
  # GET /alcances/1.json
  def show
  end

  # GET /alcances/new
  def new
    @alcance = Alcance.new
  end

  # GET /alcances/1/edit
  def edit
  end

  # POST /alcances
  # POST /alcances.json
  def create
    @alcance = Alcance.new(alcance_params)

    respond_to do |format|
      if @alcance.save
        format.html { redirect_to @alcance, notice: 'Alcance was successfully created.' }
        format.json { render :show, status: :created, location: @alcance }
      else
        format.html { render :new }
        format.json { render json: @alcance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcances/1
  # PATCH/PUT /alcances/1.json
  def update
    respond_to do |format|
      if @alcance.update(alcance_params)
        format.html { redirect_to @alcance, notice: 'Alcance was successfully updated.' }
        format.json { render :show, status: :ok, location: @alcance }
      else
        format.html { render :edit }
        format.json { render json: @alcance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcances/1
  # DELETE /alcances/1.json
  def destroy
    @alcance.destroy
    respond_to do |format|
      format.html { redirect_to alcances_url, notice: 'Alcance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alcance
      @alcance = Alcance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alcance_params
      params.require(:alcance).permit(:usuario_id, :comuna_id)
    end
end
