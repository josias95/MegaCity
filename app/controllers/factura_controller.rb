class FacturaController < ApplicationController
	def subir
		@factura = Factura.new
	end

	def show

	end
	
	def factura_params
		params.require(:factura).permit(:estado,:valor,:cover)
	end
end
