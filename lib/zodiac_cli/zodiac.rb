class Zodiac
    attr_accessor :name, :Aries, :Taurus,:Gemini,:Cancer,:Leo,:Virgo,
   :Libra,:Scorpio,:Sagittarius,:Capricorn,:Aquarius,:Pisces

    @@all = []
    def initialize(name_hash) #calls upon and initialize every attribute instead of doing individually
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
    
end
