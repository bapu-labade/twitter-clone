class ProfilesController < ApplicationController
	layout 'profile_layout'
	
  def index
  	@tweets = Tweet.order("created_at DESC")
  	@users = User.all - ([current_user] + current_user.all_following)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(avatar: params[:user][:avatar])
      flash[:notice] = "Successfully updated."
      redirect_to profiles_path
    else
      render :action => 'edit'
    end

  end
end
