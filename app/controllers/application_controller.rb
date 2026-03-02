class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_navbar_categories

  protected

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone])
  end

  allow_browser versions: :modern

  private
  def set_navbar_categories
    @navbar_categories = Category.distinct.order(:name)
  end 
end
