class FacebookController < ApplicationController
  def new
  end

  def create
    user = current_user
    message = params[:message]
    FacebookPost.create_post(user.uid, session['token'], message)
    redirect_to facebook_path
  end
end
