class ServiciosController < ApplicationController
  before_action :set_servicio,    only: [:show, :edit, :update, :destroy]

  def index
    @servicios = Servicio.all
  end

  def new
    @servicio = Servicio.new
  end

  def edit
  end

  def create
    @servicio = Servicio.new(servicio_params)
    if @servicio.save
      flash[:success] = "Servicio '#{@servicio.nombre}' creado correctamente."
      redirect_to servicios_path
    else
      render 'new'
    end
  end

  def update
    if @servicio.update(servicio_params)
      flash[:success] = "Servicio '#{@servicio.nombre}' actualizado correctamente."
      redirect_to servicios_path
    else
      render 'edit'
    end
  end

  def destroy
    @servicio.destroy
    flash[:success] = "Servicio '#{@servicio.nombre}' eliminado correctamente."
    redirect_to servicios_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio
      @servicio = Servicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicio_params
      params.require(:servicio).permit(:nombre, :tipo_servicio_id)
    end
end