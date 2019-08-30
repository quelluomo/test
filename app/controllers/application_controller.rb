class ApplicationController < ActionController::Base

  def index
    @videos = Video.all
    @video = Video.order("url DESC").last
    #@previous = Video.where("id < ?", id).last
    #@previous = Video.previous
    #@next = Video.where("id > ?", id).first
  end
end
