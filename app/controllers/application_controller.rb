class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private
    def after_sign_in_path_for(resource)
    	admin_home_index_path 
      # El path a donde tu quieres que redirija cuando se ha logueado correctamente, ej. posts_path
    end

end
