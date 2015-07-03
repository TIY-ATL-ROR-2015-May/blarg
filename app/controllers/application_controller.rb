class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_devise_params, if: :devise_controller?

  rescue_from ActiveRecord::RecordNotFound do
    render json: { error: "No such item: #{request.path} " },
      status: :not_found
  end

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) << :avatar
    devise_parameter_sanitizer.for(:account_update) << :avatar
  end
end
