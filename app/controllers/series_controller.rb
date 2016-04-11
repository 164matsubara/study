class SeriesController < ApplicationController
  def new
    @series = Series.new
  end
  
  def create
    @series = Series.new
    if @series.save
      flash[:success] = "New series was recorded!"
      redirect_to @series
    else
      render 'new'
    end
  end
  
  
  

end
