class API
    
    def self.get_data #calls upon website/api and make a new object using class zodiac
       
        response = RestClient.get("https://horoscopes-and-astrology.com/json")
        zodiac_info = JSON.parse(response)["dailyhoroscope"]
        Zodiac.new(zodiac_info)
 
    end

    
end