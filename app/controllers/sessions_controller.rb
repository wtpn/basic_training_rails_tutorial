class SessionsController < ApplicationController
  def new
  end

  def crreate
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
    else
    render 'new'
    end
  end

  def destroy

  end
end
