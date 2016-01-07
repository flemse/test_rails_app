class UsersController < ApplicationController
  def index
    render json: User.all.includes(:posts, :cars)
  end
end
