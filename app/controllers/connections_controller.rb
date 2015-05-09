class ConnectionsController < ApplicationController
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
end
