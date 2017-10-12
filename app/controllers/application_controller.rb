class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

	def authenticate_admin!
		redirect_to root_path unless usuario_signed_in? && current_usuario.is_admin?
	end
end
