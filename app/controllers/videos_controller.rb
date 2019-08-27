class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def index
    @videos = Video.all
    @user = current_user
  end

  def show
    @video = Video.find(params[:id])
    @user = current_user
  end

  def edit
    @video = Video.find(params[:id])
  end

  def create
    @video = Video.create(video_params)
    if @video.save
      redirect_to video_path(@video)
    else
      flash[:error] = "An error occured while creating the video."
      render :new
    end
  end

  def update
    @video = Video.find(params[:id])
    if @video.update(video_params)
      redirect_to @video
    else
      flash[:error] = "Could not update the video"
      render :edit
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :url)
  end

end
