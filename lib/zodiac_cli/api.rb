class API
         
    def self.get_data
       
        response = RestClient.get("https://horoscopes-and-astrology.com/json")
        zodiac_info = JSON.parse(response)["dailyhoroscope"]
        zodiac_info.each do |zodiac|
          Zodiac.new(zodiac)

        #   binding.pry
        end
         
         binding.pry
         
    end
end