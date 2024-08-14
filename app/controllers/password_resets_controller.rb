class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
    else
    end
    redirect_to root_path, notice: "If an account was created with this email, we have sent a link to reset your password"
  end
end