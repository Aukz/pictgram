class StarsController < ApplicationController
  def new
    @star = Star.new
  end
  def index

  end

  def create
    @star = Star.new(star: params[:star][:star],topic_id: params[:star][:topic_id])
    @star.save
  end
end
