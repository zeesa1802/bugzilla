class ApplicationController < ActionController::Base

  def authenticate_admin!
    authenticate_user!
    return if current_user.admin?

    sign_out current_user
  end
end
