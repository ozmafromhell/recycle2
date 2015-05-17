class TipoResiduosController < ApplicationController
  before_action :set_tipo_residuo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_residuos
  # GET /tipo_residuos.json
  def index
    @tipo_residuos = TipoResiduo.all
  end

  # GET /tipo_residuos/1
  # GET /tipo_residuos/1.json
  def show
  end

  # GET /tipo_residuos/new
  def new
    @tipo_residuo = TipoResiduo.new
  end

  # GET /tipo_residuos/1/edit
  def edit
  end

  # POST /tipo_residuos
  # POST /tipo_residuos.json
  def create
    @tipo_residuo = TipoResiduo.new(tipo_residuo_params)

    respond_to do |format|
      if @tipo_residuo.save
        format.html { redirect_to @tipo_residuo, notice: 'Tipo residuo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_residuo }
      else
        format.html { render :new }
        format.json { render json: @tipo_residuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_residuos/1
  # PATCH/PUT /tipo_residuos/1.json
  def update
    respond_to do |format|
      if @tipo_residuo.update(tipo_residuo_params)
        format.html { redirect_to @tipo_residuo, notice: 'Tipo residuo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_residuo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_residuo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_residuos/1
  # DELETE /tipo_residuos/1.json
  def destroy
    @tipo_residuo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_residuos_url, notice: 'Tipo residuo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_residuo
      @tipo_residuo = TipoResiduo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_residuo_params
      params.require(:tipo_residuo).permit(:nombre)
    end
end
