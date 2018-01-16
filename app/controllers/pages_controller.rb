class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end
  def explore
    @q = Item.ransack(params[:q])
    @items = @q.result.includes(:user)
  end

end
