class FoodsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @food = Food.new
  end
end
