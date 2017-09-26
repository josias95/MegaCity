class UsuarioController < ApplicationController

	def index
		@usuarios = Usuario.all 
	end
end
