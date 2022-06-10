class CatApi
    BASE_URL = 'https://api.thecatapi.com/v1/'

    def initialize
        conn = Faraday.new(
            url: BASE_URL + 'breeds',
            headers: {
                'x-api-key' => ENV['CAT_API_KEY']
            }
        )
        response = conn.get
        @breeds = JSON.parse(response.body)
    end


    def breeds
        @breeds
    end

    def breed
        @breeds.sample
    end

    def image(id)
        conn = Faraday.new(
            url: BASE_URL + '/images/search',
            params: {
                breed_id: id
            },
            headers: {
                'x-api-key' => ENV['CAT_API_KEY']
            }
        )

        response = JSON.parse(conn.get.body)
    end


end
