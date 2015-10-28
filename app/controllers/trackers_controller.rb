class TrackersController < ApplicationController
  def index
    @tracker = Tracker.new
    @trackers = Tracker.all
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
    @tracker = Tracker.new(tracker_params)
    if @tracker.save
      flash[:notice] = "Tracker added!"
      redirect_to root_path
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
  def tracker_params
    params.require(:tracker).permit(:name)
  end
end
