class ApplicationController < ActionController::Base

  def index
    @videos = Video.all
    @video = Video.first
  end
end
