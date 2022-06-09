class CatApi
    BASE_URL = 'https://api.thecatapi.com/v1/'
    def initialize
    end

    def breeds


        response = RestClient.get(BASE_URL + "breeds")
        JSON.parse(response)
    end

    def breed
        breeds.sample
    end


end
