class ApplicationController < ActionController::Base

  def index
    @videos = Video.all
    @video = Video.last
    @previous = Video.previous
    @next = Video.next
  end
end
