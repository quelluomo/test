class ApplicationController < ActionController::Base

  def index
    @videos = Video.all
    @video = Video.url.last
    #@previous = Video.where("id < ?", id).last
    #@previous = Video.previous
    #@next = Video.where("id > ?", id).first
  end
end
