class UsersController < ApplicationController
  def index
    render json: User.all.limit(10).includes(:posts, :cars)
  end
end
