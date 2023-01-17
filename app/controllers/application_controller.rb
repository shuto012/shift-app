class ApplicationController < ActionController::Base

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :sign_in, keys: [:name, :number])
  end
end
