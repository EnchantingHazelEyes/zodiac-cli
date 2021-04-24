class Zodiac
    attr_accessor :name, :Aries, :Taurus,:Gemini,:Cancer,:Leo,:Virgo,
   :Libra,:Scorpio,:Sagittarius,:Capricorn,:Aquarius,:Pisces, :dailyhoroscope

    @@all = []
    def initialize(name_hash)
       name_hash.each do |key,value|
       self.send("#{key}=",value) if self.respond_to?("#{key}=")
        end  
        save
    end

    def save 
        @@all << self 
    end

    def self.all
        @@all
    end

    def self.find_zodiac(zodiac)
        self.all.detect do |zodiac_name|
            zodiac == zodiac_name
        end
    
  #  binding.pry
    
    end
end
