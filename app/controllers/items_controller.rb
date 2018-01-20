class ItemsController < ApplicationController
  before_action :find_user, only: [:show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def show          # GET /items/:id
  end

  def new           # GET /items/new
    @item = Item.new
  end

  def create        # POST /items
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to user_item_path(current_user,@item)
    else
      render :new
    end
  end

  def edit          # GET /items/:id/edit
  end

  def update        # PATCH /items/:id
    if @item.update(item_params)
      redirect_to user_item_path(@item)
    else
      render 'edit'
    end
  end

  def destroy       # DELETE /items/:id
    @item.destroy
    redirect_to root_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :price, :item_type, :photo, :condition)
  end
end
