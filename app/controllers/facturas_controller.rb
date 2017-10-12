class FacturasController < ApplicationController
  before_action :set_factura, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!
  before_action :authenticate_admin!, only: [:index, :edit, :destroy]
  # GET /facturas
  # GET /facturas.json
  def index
    @facturas = Factura.all
  end

  def indexCliente
    id = current_usuario.id
    facturas = Factura.all
    @facturas = []
    facturas.each do|f|
        if id == f.usuario_id
            @facturas.push(f)
        end
    end
  end

  # GET /facturas/1
  # GET /facturas/1.json
  def show

  end

  # GET /facturas/new
  def new
    @factura = Factura.new
  end

  # GET /facturas/1/edit
  def edit

  end

  # POST /facturas
  # POST /facturas.json
  def create
    @factura = current_usuario.facturas.new(factura_params)

    respond_to do |format|
      if @factura.save
        format.html { redirect_to @factura, notice: 'Factura was successfully created.' }
        format.json { render :show, status: :created, location: @factura }
      else
        format.html { render :new }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturas/1
  # PATCH/PUT /facturas/1.json
  def update
    respond_to do |format|
      if @factura.update(factura_params)
        format.html { redirect_to @factura, notice: 'Factura was successfully updated.' }
        format.json { render :show, status: :ok, location: @factura }
      else
        format.html { render :edit }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    @factura.destroy
    respond_to do |format|
      format.html { redirect_to facturas_url, notice: 'Factura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def validate_usuario
      redirect_to new_usuario_session_path notice: "Necesitas iniciar sesion"
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_params
      params.require(:factura).permit(:estado, :valor, :cover)
    end
end
