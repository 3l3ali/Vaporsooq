class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @items = @user.items.order(updated_at: :desc)
    if params[:item_type].present?
      @items = @user.items.where(item_type: params[:item_type]).order(updated_at: :desc)
    else
      @items = @user.items.order(updated_at: :desc)
    end
  end
end
