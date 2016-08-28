class IncidentsController < ApplicationController
  def index
    @incidents = Incident.page(params[:page])
  end

  def new
    @incident = Incident.new
  end

  def create
    Incident.create!(params.require(:incident).permit(:incident_type, :lat, :lng, :description, :available, :start_time, :end_time))
    redirect_to action: 'index'
  end
end
