class ProfilesController < ApplicationController
	layout 'profile_layout'
	
  def index
  	@tweets = Tweet.order("created_at DESC")
  	@users = User.all - ([current_user] + current_user.all_following)
  end

  def edit

  end
end
