class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @items = @user.items.order(updated_at: :desc)
  end
end
