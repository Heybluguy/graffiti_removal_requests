class WardOfficeService
  def get_alderman(last_name)
    response = connection.get("?$where=alderman like '%25#{last_name.capitalize}%25'")
    if response_ok?(response)
      alderman_info = JSON.parse(response.body).first
      return Alderman.new(alderman_info) if alderman_info
    else
      nil
    end
  end

    private

      def connection
        @connection ||= Faraday.new(url: "https://data.cityofchicago.org/resource/7ia9-ayc2.json")
      end

      def response_ok?(response)
        response.status == 200 ? true : false
      end

end