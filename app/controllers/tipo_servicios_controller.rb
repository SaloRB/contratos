class TipoServiciosController < ApplicationController
  before_action :set_tipo_servicio,    only: [:show, :edit, :update, :destroy]

	def index
		@tipo_servicios = TipoServicio.all
	end

  def new
  	@tipo_servicio = TipoServicio.new
  end

  def edit
  end

  def create
    @tipo_servicio = TipoServicio.new(tipo_servicio_params)
    if @tipo_servicio.save
      flash[:success] = "Tipo Servicio '#{@tipo_servicio.tipo}' creado correctamente."
      redirect_to tipo_servicios_path
    else
      render 'new'
    end
  end

  def update
    if @tipo_servicio.update(tipo_entidad_params)
      flash[:success] = "Tipo Servicio '#{@tipo_servicio.tipo}' actualizado correctamente."
      redirect_to tipo_servicios_path
    else
      render 'edit'
    end
  end

  def destroy
    @tipo_servicio.destroy
    flash[:success] = "Tipo Servicio '#{@tipo_servicio.tipo}' eliminado correctamente."
    redirect_to tipo_servicios_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_servicio
      @tipo_servicio = TipoServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_servicio_params
      params.require(:tipo_servicio).permit(:tipo)
    end
end
