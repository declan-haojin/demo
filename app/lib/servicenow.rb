require 'faraday'
Faraday.default_adapter = :net_http

class Servicenow
    attr_accessor :request, :endpoint, :response
    BASE_URL = 'https://duketest.service-now.com'

    def initialize

    end

    def create_connection
        conn = Faraday.new(
            url: BASE_URL + '/api/now/v1/table/incident',
            headers: {
                'Accept' => 'application/json; version=2.0',
                'Accept-Encoding' => ''
            }
        )
        conn.basic_auth(ENV['USERNAME'],ENV["KEY"])

        response = conn.get


        # return response
        JSON.parse(response.body)


    end
end
