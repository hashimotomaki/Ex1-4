class RelationshipsController < ApplicationController
  def follow
    current_user.follow(params[:id])
    redirect_to users_path
  end

  def unfollow
    current_user.unfollow(params[:id])
    redirect_to users_path
  end

  def follows
    @user  = User.find(params[:id])
    @users = @user.followed

  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.follower
  end
end