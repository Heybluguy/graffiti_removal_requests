class GraffitiRequestService

  def get_requests(month, year, alderman)
    response = connection.get("?ward=#{alderman.ward}&$where=creation_date between '#{year}-#{month}-01T00:00:01' and '#{year}-#{month.succ}-01T00:00:00'")
    if response_ok?(response)
      @service_requests = JSON.parse(response.body)
      return @service_requests
    else
      nil
    end
  end

  private

    def connection
      @connection ||= Faraday.new(url: "https://data.cityofchicago.org/resource/cdmx-wzbz.json")
    end

    def response_ok?(response)
      response.status == 200 ? true : false
    end

end