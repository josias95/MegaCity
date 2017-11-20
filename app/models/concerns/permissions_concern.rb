module PermissionsConcern
	extend ActiveSupport::Concern
	def is_normal_usuario?
		self.permission_level <= 1
	end

	def is_admin?
		self.permission_level >= 2
	end
end