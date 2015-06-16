class ApiController < ApplicationController
  def get_users
    @users = User.all
    render "get_users.json.jbuilder"
  end

  def get_comments
    @comments = Comment.all
    render json: @comments
  end
end
