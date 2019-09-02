class VideosController < ApplicationController

  def new
    @video = Video.new
    render :new
  end

  def index
    @videos = Video.all
    @user = current_user
    render :index
  end

  def show
    @video = Video.find(params[:id])
    @user = current_user
    @comments = @video.comments
		render :show
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

  def destroy
		@video = Video.find_by(id: params[:id])
		@video.destroy
		redirect_to '/'
	end

  private

  def video_params
    params.require(:video).permit(:title, :url)
  end

end
