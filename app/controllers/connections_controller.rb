class ConnectionsController < ApplicationController
  layout 'profile_layout'
  
  def index
    @all_following = current_user.all_following
    respond_to do |format|
      format.html
      format.js 
    end
  end

	def create
		follwed_user = User.find(params[:follwed_user_id])
    current_user.follow(follwed_user)
    @users = User.all - ([current_user] + current_user.all_following)
    flash[:notice] = "You have sucessfully follwed #{follwed_user.username}"
	  respond_to do |format|
      format.html { redirect_to connections_path }
      format.js
    end
  end

  def follower
    @all_followers = current_user.followers
    respond_to do |format|
      format.js
    end
  end
end
