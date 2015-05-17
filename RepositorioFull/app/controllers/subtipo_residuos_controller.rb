class SubtipoResiduosController < ApplicationController
  before_action :set_subtipo_residuo, only: [:show, :edit, :update, :destroy]

  # GET /subtipo_residuos
  # GET /subtipo_residuos.json
  def index
    @subtipo_residuos = SubtipoResiduo.all
  end

  # GET /subtipo_residuos/1
  # GET /subtipo_residuos/1.json
  def show
  end

  # GET /subtipo_residuos/new
  def new
    @subtipo_residuo = SubtipoResiduo.new
  end

  # GET /subtipo_residuos/1/edit
  def edit
  end

  # POST /subtipo_residuos
  # POST /subtipo_residuos.json
  def create
    @subtipo_residuo = SubtipoResiduo.new(subtipo_residuo_params)

    respond_to do |format|
      if @subtipo_residuo.save
        format.html { redirect_to @subtipo_residuo, notice: 'Subtipo residuo was successfully created.' }
        format.json { render :show, status: :created, location: @subtipo_residuo }
      else
        format.html { render :new }
        format.json { render json: @subtipo_residuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subtipo_residuos/1
  # PATCH/PUT /subtipo_residuos/1.json
  def update
    respond_to do |format|
      if @subtipo_residuo.update(subtipo_residuo_params)
        format.html { redirect_to @subtipo_residuo, notice: 'Subtipo residuo was successfully updated.' }
        format.json { render :show, status: :ok, location: @subtipo_residuo }
      else
        format.html { render :edit }
        format.json { render json: @subtipo_residuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subtipo_residuos/1
  # DELETE /subtipo_residuos/1.json
  def destroy
    @subtipo_residuo.destroy
    respond_to do |format|
      format.html { redirect_to subtipo_residuos_url, notice: 'Subtipo residuo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtipo_residuo
      @subtipo_residuo = SubtipoResiduo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subtipo_residuo_params
      params.require(:subtipo_residuo).permit(:nombre, :tipoResiduo_id)
    end
end
