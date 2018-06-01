class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @nader = User.find_by(email: "nader@seller.com")
    @rami = User.find_by(email: "rami@seller.com")
    @rashed = User.find_by(email: "rashed@seller.com")

  end
  def explore
    @q = Item.ransack(params[:q])
    @items = @q.result.includes(:user).shuffle
  end

end
