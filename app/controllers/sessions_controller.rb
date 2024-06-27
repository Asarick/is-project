class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      log_in user
      render json: { success: true, user: user }
    else
      render json: { success: false, error: 'Invalid email/password combination' }, status: :unauthorized
    end
  end

  def destroy
    log_out
    render json: { success: true }
  end
end