class Zodiac
    attr_accessor :name , :birthday , :dates

    @@all = []

    def initialize(zodiac_hash)
        zodiac_hash.each do |key,value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=") 
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
