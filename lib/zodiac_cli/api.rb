include ActionView::Helpers::SanitizeHelper
class API
    
    def self.get_data
       
        response = RestClient.get("https://horoscopes-and-astrology.com/json")
        zodiac_info = JSON.parse(response)["dailyhoroscope"]
       # strip_tags(zodiac_info)
        Zodiac.new(zodiac_info)
       # binding.pry
        #end 
    
    end
    
   # binding.pry
    
end