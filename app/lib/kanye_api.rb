class KanyeApi
    BASE_URL = 'https://api.kanye.rest/'
    def initialize

    end

    def get_a_quote
        conn = Faraday.new(
            url: BASE_URL + 'text'
        )

        conn.get.body
    end
end
