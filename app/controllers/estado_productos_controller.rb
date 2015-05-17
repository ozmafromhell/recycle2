class EstadoProductosController < ApplicationController
  before_action :set_estado_producto, only: [:show, :edit, :update, :destroy]

  # GET /estado_productos
  # GET /estado_productos.json
  def index
    @estado_productos = EstadoProducto.all
  end

  # GET /estado_productos/1
  # GET /estado_productos/1.json
  def show
  end

  # GET /estado_productos/new
  def new
    @estado_producto = EstadoProducto.new
  end

  # GET /estado_productos/1/edit
  def edit
  end

  # POST /estado_productos
  # POST /estado_productos.json
  def create
    @estado_producto = EstadoProducto.new(estado_producto_params)

    respond_to do |format|
      if @estado_producto.save
        format.html { redirect_to @estado_producto, notice: 'Estado producto was successfully created.' }
        format.json { render :show, status: :created, location: @estado_producto }
      else
        format.html { render :new }
        format.json { render json: @estado_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_productos/1
  # PATCH/PUT /estado_productos/1.json
  def update
    respond_to do |format|
      if @estado_producto.update(estado_producto_params)
        format.html { redirect_to @estado_producto, notice: 'Estado producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_producto }
      else
        format.html { render :edit }
        format.json { render json: @estado_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_productos/1
  # DELETE /estado_productos/1.json
  def destroy
    @estado_producto.destroy
    respond_to do |format|
      format.html { redirect_to estado_productos_url, notice: 'Estado producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_producto
      @estado_producto = EstadoProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_producto_params
      params.require(:estado_producto).permit(:estado_id, :oferta_id)
    end
end
