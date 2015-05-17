class ImagenOfertaController < ApplicationController
  before_action :set_imagen_ofertum, only: [:show, :edit, :update, :destroy]

  # GET /imagen_oferta
  # GET /imagen_oferta.json
  def index
    @imagen_oferta = ImagenOfertum.all
  end

  # GET /imagen_oferta/1
  # GET /imagen_oferta/1.json
  def show
  end

  # GET /imagen_oferta/new
  def new
    @imagen_ofertum = ImagenOfertum.new
  end

  # GET /imagen_oferta/1/edit
  def edit
  end

  # POST /imagen_oferta
  # POST /imagen_oferta.json
  def create
    @imagen_ofertum = ImagenOfertum.new(imagen_ofertum_params)

    respond_to do |format|
      if @imagen_ofertum.save
        format.html { redirect_to @imagen_ofertum, notice: 'Imagen ofertum was successfully created.' }
        format.json { render :show, status: :created, location: @imagen_ofertum }
      else
        format.html { render :new }
        format.json { render json: @imagen_ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagen_oferta/1
  # PATCH/PUT /imagen_oferta/1.json
  def update
    respond_to do |format|
      if @imagen_ofertum.update(imagen_ofertum_params)
        format.html { redirect_to @imagen_ofertum, notice: 'Imagen ofertum was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagen_ofertum }
      else
        format.html { render :edit }
        format.json { render json: @imagen_ofertum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagen_oferta/1
  # DELETE /imagen_oferta/1.json
  def destroy
    @imagen_ofertum.destroy
    respond_to do |format|
      format.html { redirect_to imagen_oferta_url, notice: 'Imagen ofertum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagen_ofertum
      @imagen_ofertum = ImagenOfertum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagen_ofertum_params
      params.require(:imagen_ofertum).permit(:imagen_id, :oferta_id)
    end
end
