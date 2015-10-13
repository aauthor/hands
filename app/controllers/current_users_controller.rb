class CurrentUsersController < ApplicationController

  def update
    @current_user = params[:current_user]
    cookies[:current_user] = @current_user
    redirect_to '/'
  end

end
