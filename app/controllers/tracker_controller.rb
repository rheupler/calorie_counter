class TrackerController < ApplicationController
  def index
    
  end

  def new
    @tracker = Tracker.new
  end

  def destroy
    @tracker = Tracker.find(params[:id])
    @tracker.destroy
    redirect_to users_path
  end

  def show
    @tracker = Tracker.find(params[:id])

  end

  def create
    @tracker = Tracker.new(sign_up_params)
    if @tracker.save
      flash[:notice] = "Tracker added!"
      redirect_to users_path
    else
      render :index
    end
  end

  def edit
    @tracker = Tracker.find(params[:id])
  end

  def update
    @tracker = Tracker.find(params[:id])
    if @tracker.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end


  private
  def sign_up_params
    params.require(:tracker).permit(:email, :password, :password_confirmation)
  end
end
