include ActionView::Helpers::SanitizeHelper
class API
    
    def self.get_data
       
        response = RestClient.get("https://horoscopes-and-astrology.com/json")
        zodiac_info = JSON.parse(response)["dailyhoroscope"]
       # strip_tags(zodiac_info)
       # zodiac_info.each do |zodiac|
            Zodiac.new(zodiac_info)
          #  binding.pry
        #end
        
     #  binding.pry
         
    end
    
   # binding.pry
    
end