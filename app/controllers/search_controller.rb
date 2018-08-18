class SearchController < ApplicationController
  def index
    @alderman = ward_office_service.get_alderman(params[:q])
    @month = params[:date][:month].rjust(2, '0')
    @year = params[:date][:year]

    if @alderman
      @service_requests = graffiti_request_service.get_requests(@month, @year, @alderman)
    end
  end

  private
    def ward_office_service
      @ward_office_service ||= WardOfficeService.new
    end

    def graffiti_request_service
      @graffiti_request_service ||= GraffitiRequestService.new
    end

end
