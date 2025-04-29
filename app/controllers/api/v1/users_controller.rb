class Api::V1::UsersController < ApplicationController
  def index 
    users = User.all
    render json: UserSerializer.new(users), status: :ok
  end
end