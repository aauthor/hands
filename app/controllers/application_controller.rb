class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :assign_current_user

  private

  def assign_current_user
    @current_user = CurrentUser.new(name: cookies[:current_user_name])
  end

end
