class FoodsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @food = Food.new
  end

  def create
    @user = User.find(params[:user_id])
    @food = current_user.foods.new(foods_params)
    @food.user_id=current_user.id if current_user
    if @food.save
      flash[:notice] = "Food added!"
      redirect_to root_path(@user)
    else
      render :new
    end
  end

  private
  def foods_params
    params.require(:food).permit(:name, :calories)
  end
end
