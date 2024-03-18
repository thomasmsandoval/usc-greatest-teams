class TeamsController < ApplicationController
  def index
    @teams = Team.all
    render :index
  end

  def create
    @team = Team.create(
      year: params[:year],
      image: params[:image],
      information: params[:information],
    )
    render :show
  end

  def show
    @team = Team.find_by(id: params[:id])
    render :show
  end
end
