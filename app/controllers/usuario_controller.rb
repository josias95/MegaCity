class UsuarioController < ApplicationController

#	def sesion
#		@usuarios = Usuario.all
#		@usuario = @usuarios.find(1)
#		@usuario = Usuario.find(params[:nombre])
#	end
	def sesion
		
		if request.post?
			#John Carlos
			@nombre = params[:nombre]
			#12345
			@contrasena = params[:contrasena]
			@usuarios = Usuario.all
			usuarioP = Usuario.new

			@usuarios.each do|usuario|
				if usuario.nombre == @nombre
					usuarioP = usuario
				end
			end

			if usuarioP.contrasena == @contrasena
				@usuario = usuarioP
			end
		end

	end
end
