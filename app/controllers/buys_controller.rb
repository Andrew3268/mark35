class BuysController < ApplicationController

  before_action :find_buy, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @buys = Buy.all.order("created_at DESC")
  end

  def show
    @comments = Comment.where(buy_id: @buy)
  end

  def new
    @buy = current_user.buys.build
  end

  def create
    @buy = current_user.buys.build(buy_params)

    if @buy.save
      redirect_to @buy
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @buy.update(buy_params)
      redirect_to @buy
    else
      render 'edit'
    end
  end

  def destroy
    @buy.destroy
    redirect_to root_path
  end

  private

  def find_buy
    @buy = Buy.find(params[:id])
  end

  def buy_params
    params.require(:buy).permit(:title, :link, :description, :buy_image)
  end
end
