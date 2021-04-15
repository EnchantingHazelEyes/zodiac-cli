class Zodiac
    attr_accessor :name , :birthday , :dates

    @@all = []

    def initialize(name)
        @zodiac_name = [] 
        @name = name
        @birthday = birthday
        @dates = dates
        save
    end

    def save 
        @@all << self 
    end

    def self.all
        @@all
    end



end
