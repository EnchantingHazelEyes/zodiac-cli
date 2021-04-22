class Zodiac
    attr_accessor :name , :dates

    @@all = []
    def initialize(name)
       @name = name      
        save
    end

    def save 
        @@all << self 
    end

    def self.all
        @@all
    end

    def self.find_zodiac(zodiac_name)
        self.all.detect do |zodiac|
            zodiac.name == zodiac_name
        end
    end
end
