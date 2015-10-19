class CurrentUsersController < ApplicationController

  def update
    @current_user = CurrentUser.new(current_user_params)
    cookies[:current_user_name] = @current_user.name
    redirect_to '/'
  end

  private

  def current_user_params
    params.require(:current_user).permit(:name).symbolize_keys
  end

end
