class StatisticsController < ApplicationController
  def index
	@statistics = Statistic.all  
  end

  def show
	@nombres = params[:name]
	@month = params[:month]
	@year = params[:year]
  end

  def new
  end
end
