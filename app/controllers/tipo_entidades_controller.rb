class TipoEntidadesController < ApplicationController
  before_action :set_tipo_entidad,    only: [:show, :edit, :update, :destroy]

  def index
    @tipo_entidades = TipoEntidad.all
  end

  def show
  end

  def new
    @tipo_entidad = TipoEntidad.new
  end

  def edit
  end

  def create
    @tipo_entidad = TipoEntidad.new(tipo_entidad_params)
    if @tipo_entidad.save
      flash[:success] = "Tipo Entidad '#{@tipo_entidad.tipo}' creado correctamente."
      redirect_to tipo_entidades_path
    else
      render 'new'
    end
  end

  def update
    if @tipo_entidad.update(tipo_entidad_params)
      flash[:success] = "Tipo Entidad '#{@tipo_entidad.tipo}' actualizado correctamente."
      redirect_to tipo_entidades_path
    else
      render 'edit'
    end
  end

  def destroy
    @tipo_entidad.destroy
    flash[:success] = "Tipo Entidad '#{@tipo_entidad.tipo}' eliminado correctamente."
    redirect_to tipo_entidades_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_entidad
      @tipo_entidad = TipoEntidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_entidad_params
      params.require(:tipo_entidad).permit(:tipo)
    end
end
