class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

	def authenticate_admin!
		redirect_to root_path unless usuario_signed_in? && current_usuario.is_admin?
	end

	def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :email, :password, :apellidos, :telefono, :ciudad, :direccion, :fechaNacimmiento, :genero])
            devise_parameter_sanitizer.permit(:account_update, keys: [:nombre, :email, :password, :current_password, :apellidos, :telefono, :ciudad, :direccion, :fechaNacimmiento, :genero])
    end
end
