class API
    def self.get_data
        data_info = RestClient.get("https://www.horoscope.com/zodiac-signs/sagittarius")
        data_info.body 
      #  binding.pry
    end

end
