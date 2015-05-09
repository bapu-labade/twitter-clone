class TweetsController < ApplicationController

	def create
    @current_user.tweets.create(content: params[:content])
    @tweets = Tweet.order("created_at desc")
    flash[:notice] = "Your Tweet was posted!"
	  respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end

	end
end
