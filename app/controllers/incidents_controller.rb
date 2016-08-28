class IncidentsController < ApplicationController
  def index
    @incidents = Incident.page(params[:page])
  end

  def new
    @incident = Incident.new
  end

  def create
    Incident.create!(params.require(:incident).permit(:incident_type, :lat, :lng, :description, :available, :'start_time(1i)', :'start_time(2i)', :'start_time(3i)', :'start_time(4i)', :'start_time(5i)', :'end_time(1i)', :'end_time(2i)', :'end_time(3i)', :'end_time(4i)', :'end_time(5i)'))
    redirect_to action: 'index'
  end
end
