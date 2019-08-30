class BuyusersController < ApplicationController

  def user_page
    @buys = Buy.all.order("created_at DESC")
  end
end
