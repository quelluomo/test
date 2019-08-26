class ApplicationController < ActionController::Base

  def index
    @videos = Video.all
  end
end
