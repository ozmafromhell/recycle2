class RequierosController < ApplicationController
  before_action :set_requiero, only: [:show, :edit, :update, :destroy]

  # GET /requieros
  # GET /requieros.json
  def index
    @requieros = Requiero.all
  end

  # GET /requieros/1
  # GET /requieros/1.json
  def show
  end

  # GET /requieros/new
  def new
    @requiero = Requiero.new
  end

  # GET /requieros/1/edit
  def edit
  end

  # POST /requieros
  # POST /requieros.json
  def create
    @requiero = Requiero.new(requiero_params)

    respond_to do |format|
      if @requiero.save
        format.html { redirect_to @requiero, notice: 'Requiero was successfully created.' }
        format.json { render :show, status: :created, location: @requiero }
      else
        format.html { render :new }
        format.json { render json: @requiero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requieros/1
  # PATCH/PUT /requieros/1.json
  def update
    respond_to do |format|
      if @requiero.update(requiero_params)
        format.html { redirect_to @requiero, notice: 'Requiero was successfully updated.' }
        format.json { render :show, status: :ok, location: @requiero }
      else
        format.html { render :edit }
        format.json { render json: @requiero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requieros/1
  # DELETE /requieros/1.json
  def destroy
    @requiero.destroy
    respond_to do |format|
      format.html { redirect_to requieros_url, notice: 'Requiero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requiero
      @requiero = Requiero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requiero_params
      params.require(:requiero).permit(:usuario_id, :tipoResiduo_id)
    end
end
