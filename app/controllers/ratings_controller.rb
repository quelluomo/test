class RatingsController < ApplicationController

  def index
    @tags = Rating.all
  end

  def show
    @tag = Rating.find(params[:id])
  end
end
