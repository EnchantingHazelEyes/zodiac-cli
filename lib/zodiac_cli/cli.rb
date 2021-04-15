class CLI
    
    def start 
        puts "Welcome to the world of Zodiacs"
        intro 
        input = user_input
    end
    
    def intro
        puts "Please enter your birthday in MM/DD format to find your Zodiac!"
    end

    def user_input
        gets.strip
    end

end
