class EntidadesController < ApplicationController
  before_action :set_entidad, only: [:show, :edit, :update, :destroy]

  def index
    @entidades = Entidad.all
  end

  def show
  end

  def new
    @entidad = Entidad.new
  end

  def edit
  end

  def create
    @entidad = Entidad.new(entidad_params)
    if @entidad.save
      flash[:success] = "Entidad '#{@entidad.nombre}' creada correctamente."
      redirect_to entidades_path
    else
      render 'new'
    end
  end

  def update
    if @entidad.update(entidad_params)
      flash[:success] = "Entidad '#{@entidad.nombre}' actualizada correctamente."
      redirect_to entidades_path
    else
      render 'edit'
    end
  end

  def destroy
    @entidad.destroy
    flash[:success] = "Entidad '#{@entidad.nombre}' eliminada correctamente."
    redirect_to entidades_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entidad
      @entidad = Entidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entidad_params
      params.require(:entidad).permit(:nombre, :rfc, :curp, :direccion, :no_ext, :no_int, :delegacion, :colonia, :estado, :pais, :codigo_postal, :telefono_1, :telefono_2, :telefono_3, :email, :contacto_1, :contacto_2, :tipo_entidad_id)
    end
end
